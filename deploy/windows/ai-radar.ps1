<#
.SYNOPSIS
Runs one step of the weekly AI Radar run inside the dev container.

.DESCRIPTION
Called by the scheduled tasks "ai-radar videos" (Sunday 09:00) and "ai-radar merge"
(Sunday 18:00), and by merge-now.cmd. It makes sure Docker Desktop and the dev
container are up, then runs .claude/scripts/weekly.sh <step> inside the container.
Claude never runs git: review "git diff Categories/" and commit yourself.

.PARAMETER Step
videos | merge | notify-test

.PARAMETER Now
merge only: run right away, without the catch-up wait (merge-now).

.PARAMETER Container
Container name or ID, if the automatic lookup picks the wrong one (or none).

.EXAMPLE
powershell -ExecutionPolicy Bypass -File deploy\windows\ai-radar.ps1 -Step merge -Now
#>
param(
    [Parameter(Mandatory = $true)][ValidateSet('videos', 'merge', 'notify-test')][string]$Step,
    [switch]$Now,
    [string]$Container = ''
)

# Continue, not Stop: in Windows PowerShell 5.1, Stop turns any docker stderr line
# into a crash. Every native call below checks $LASTEXITCODE instead.
$ErrorActionPreference = 'Continue'

$repo      = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path   # ...\ai-radar
$workspace = Split-Path $repo -Parent                                # mounted as /workspace
$data      = Join-Path $repo 'radar-data'
$logDir    = Join-Path $data 'logs'
New-Item -ItemType Directory -Force -Path $logDir | Out-Null
$hostLog   = Join-Path $logDir 'host.log'

function Write-Log([string]$msg) {
    $line = "{0}  [{1}] {2}" -f (Get-Date -Format 'yyyy-MM-dd HH:mm:ss'), $Step, $msg
    Add-Content -Path $hostLog -Value $line
    Write-Host $line
}

function Send-Alert([string]$title, [string]$body) {
    # Same topic as weekly.sh, read from radar-data\weekly.env. The URL is never printed.
    $envFile = Join-Path $data 'weekly.env'
    if (-not (Test-Path $envFile)) { return }
    $m = Select-String -Path $envFile -Pattern '^\s*NOTIFY_URL\s*=\s*(\S+)' | Select-Object -Last 1
    if (-not $m) { return }
    $url = $m.Matches[0].Groups[1].Value.Trim('"')
    try {
        Invoke-RestMethod -Method Post -Uri $url -Body $body -Headers @{ Title = $title; Tags = 'warning' } -TimeoutSec 20 | Out-Null
    } catch {
        Write-Log "alert failed"
    }
}

function Fail([string]$why) {
    Write-Log "FAILED: $why"
    Send-Alert 'AI Radar: action needed' "The $Step step could not start: $why. See radar-data\logs\host.log"
    exit 1
}

# --- 1. Docker Desktop ------------------------------------------------------
if (-not (Get-Command docker -ErrorAction SilentlyContinue)) { Fail 'the docker command was not found' }

function Test-Docker { & docker info *> $null; return ($LASTEXITCODE -eq 0) }

if (-not (Test-Docker)) {
    $desktop = Join-Path $env:ProgramFiles 'Docker\Docker\Docker Desktop.exe'
    if (Test-Path $desktop) {
        Write-Log 'Docker is not running, starting Docker Desktop'
        Start-Process -FilePath $desktop | Out-Null
    }
    $deadline = (Get-Date).AddMinutes(3)
    while (-not (Test-Docker)) {
        if ((Get-Date) -gt $deadline) { Fail 'Docker Desktop did not start within 3 minutes' }
        Start-Sleep -Seconds 5
    }
}

# --- 2. The dev container ---------------------------------------------------
if (-not $Container) {
    # VS Code labels dev containers with the host folder they were opened from.
    $want = $workspace.TrimEnd('\').ToLowerInvariant()
    # No double quotes inside the Go templates: Windows PowerShell 5.1 strips them
    # when calling docker, which breaks {{.Label "..."}}. Read the labels as JSON instead.
    $ids  = & docker ps -aq --filter 'label=devcontainer.local_folder'
    $hits = @()
    foreach ($id in $ids) {
        $json = & docker inspect -f '{{json .Config.Labels}}' $id
        if ($LASTEXITCODE -ne 0 -or -not $json) { continue }
        $folder = ($json | ConvertFrom-Json).'devcontainer.local_folder'
        if ($folder -and $folder.TrimEnd('\').ToLowerInvariant() -eq $want) { $hits += $id }
    }
    if ($hits.Count -eq 0) { Fail "no dev container found for $workspace (open it once in VS Code, or pass -Container)" }
    if ($hits.Count -gt 1) { Fail "several dev containers found for $workspace, pass -Container <name>" }
    $Container = $hits[0]
}

$state = (& docker inspect -f '{{.State.Running}}' $Container 2>$null)
if ($LASTEXITCODE -ne 0) { Fail "container $Container does not exist" }
if ($state -ne 'true') {
    Write-Log "starting container $Container"
    & docker start $Container | Out-Null
    if ($LASTEXITCODE -ne 0) { Fail "could not start container $Container" }
}

# --- 3. Run the step --------------------------------------------------------
$stepArgs = @('exec', '-w', '/workspace/ai-radar', $Container, 'bash', '.claude/scripts/weekly.sh', $Step)
if ($Now -and $Step -eq 'merge') { $stepArgs += '--now' }

Write-Log ("running weekly.sh {0}{1} in {2}" -f $Step, $(if ($Now) { ' --now' } else { '' }), $Container)
& docker @stepArgs
$code = $LASTEXITCODE
Write-Log "finished with code $code (0 ok, 1 needs attention, 75 another step was running)"
exit $code
