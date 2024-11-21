@echo off
:loop
timeout /t 1 >nul
for /f "tokens=1 delims=:" %%a in ('netsh wlan show interface ^| find "SSID" ^| findstr /v "BSSID"') do set ssid=%%a
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| find "Descripton"') do set adapter=%%a
for /f "tokens=3 delims=:" %%a in ('netsh wlan show interface ^| find "State"') do set state=%%a
for /f "tokens=4 delims=:" %%a in ('netsh wlan show interface ^| find "Signal"') do set signal=%%a
for /f "tokens=4 delims==" %%a in ('netsh wlan show interface ^| find "Signal"') do set signal=%%a
cls
echo.
echo Network:
echo ---------
echo SSID: %ssid%
echo NIC: %adapter%
echo State: %state%
echo Signal: %signal%
echo.
echo Speed:
echo ------

goto loop
pause