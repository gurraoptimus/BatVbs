@echo off
:loop
for /f "tokens=1 delims=:" %%a in ('netsh wlan show interface ^| find "SSID" ^| findstr /v "BSSID"') do set ssid=%%a
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| find "Descripton"') do set adapter=%%a
for /f "tokens=3 delims=:" %%a in ('netsh wlan show interface ^| find "State"') do set state=%%a
for /f "tokens=4 delims=:" %%a in ('netsh wlan show interface ^| find "si"') do set ssid=%%a
echo SSID:%ssid%
pause