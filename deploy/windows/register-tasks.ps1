<#
.SYNOPSIS
Registers (or updates) the two weekly AI Radar tasks.

.DESCRIPTION
  ai-radar videos  every Sunday 09:00: /videos (auto-pull + videos.md queue), then a
                   phone alert to review new inputs.md
  ai-radar merge   every Sunday 18:00: merges whatever is left in new inputs.md into
                   Categories/ (does nothing if merge-now already ran)

Both run hidden, as you, while you are logged in (Docker Desktop only runs in your
session). If the PC is off or you are logged out at that time, the task starts at
your next login; the merge then still leaves you 2 hours after /videos to review.
Run it again at any time to update the tasks. No admin rights needed; if you get
"Access is denied", run it from an admin PowerShell.

.EXAMPLE
# from PowerShell, in the repo root:
powershell -ExecutionPolicy Bypass -File deploy\windows\register-tasks.ps1
#>
param(
    [string]$User = "$env:USERDOMAIN\$env:USERNAME",
    [string]$VideosAt = '09:00',
    [string]$MergeAt = '18:00',
    [string]$Day = 'Sunday'
)

$ErrorActionPreference = 'Stop'

$repo   = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path
$runner = Join-Path $PSScriptRoot 'ai-radar.ps1'
if (-not (Test-Path $runner)) { throw "Runner not found at $runner" }

$envFile = Join-Path $repo 'radar-data\weekly.env'
if (-not ((Test-Path $envFile) -and (Select-String -Path $envFile -Pattern '^\s*NOTIFY_URL\s*=\s*\S' -Quiet))) {
    Write-Warning "No NOTIFY_URL in $envFile - runs will work but send no alerts. See deploy\weekly.env.example."
}

$principal = New-ScheduledTaskPrincipal -UserId $User -LogonType Interactive -RunLevel Limited

function Register-Step([string]$name, [string]$step, [string]$at, [int]$hours, [string]$what) {
    $action   = New-ScheduledTaskAction -Execute 'powershell.exe' `
        -Argument "-NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File `"$runner`" -Step $step" `
        -WorkingDirectory $repo
    $trigger  = New-ScheduledTaskTrigger -Weekly -WeeksInterval 1 -DaysOfWeek $Day -At $at
    $settings = New-ScheduledTaskSettingsSet `
        -StartWhenAvailable `
        -AllowStartIfOnBatteries `
        -DontStopIfGoingOnBatteries `
        -ExecutionTimeLimit (New-TimeSpan -Hours $hours) `
        -MultipleInstances IgnoreNew
    Register-ScheduledTask -TaskName $name -Action $action -Trigger $trigger -Settings $settings `
        -Principal $principal -Force -Description $what | Out-Null
    Write-Host "Registered '$name' for $User - every $Day at $at."
}

Register-Step 'ai-radar videos' 'videos' $VideosAt 4 `
    'Weekly /videos run in the dev container (auto-pull + videos.md queue), then a phone alert to review new inputs.md. Logs in radar-data\logs.'
Register-Step 'ai-radar merge' 'merge' $MergeAt 5 `
    'Weekly merge of new inputs.md into Categories/ in the dev container. Never runs git. Logs in radar-data\logs.'

Write-Host ""
Write-Host "  Merge now : double-click deploy\windows\merge-now.cmd (no wait; the 18:00 run then has nothing left to do)"
Write-Host "  Run now   : Start-ScheduledTask -TaskName 'ai-radar videos'"
Write-Host "  Status    : Get-ScheduledTask -TaskName 'ai-radar *' | Get-ScheduledTaskInfo | Select-Object TaskName, LastRunTime, LastTaskResult, NextRunTime"
Write-Host "              LastTaskResult: 0 = all good, 1 = needs attention (see alert/log), 75 = another step was running,"
Write-Host "              267009 = still running"
Write-Host "  Logs      : $repo\radar-data\logs"
Write-Host "  Remove    : Get-ScheduledTask -TaskName 'ai-radar *' | Unregister-ScheduledTask -Confirm:`$false"
