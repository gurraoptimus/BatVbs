@echo off
echo =================================================
echo Bypass Admin Privileges Script
echo =================================================

:: Set RunAsInvoker compatibility layer
echo Setting compatibility layer to RunAsInvoker...
set __COMPAT_LAYER=RunAsInvoker

:: Ask for the path to the executable
set /p exe_path="Enter the full path to the executable (e.g., C:\Users\User\Downloads\application.exe): "

:: Check if the file exists
if not exist "%exe_path%" (
    echo ERROR: The file does not exist. Please check the path and try again.
    pause
    exit /b
)

:: Start the executable
echo Attempting to start %exe_path% without admin privileges...
start "" "%exe_path%"

:: Completion message
echo =================================================
echo Done. If the application requires full admin rights, this bypass may not work.
echo =================================================
pause
