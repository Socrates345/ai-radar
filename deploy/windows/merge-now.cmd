@echo off
rem Merge new inputs.md into Categories/ right now (no wait). Double-click it,
rem or pin a shortcut to the desktop or taskbar. Claude never runs git:
rem review "git diff Categories/" and commit yourself.
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0ai-radar.ps1" -Step merge -Now
echo.
pause
