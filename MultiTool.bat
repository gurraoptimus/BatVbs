@echo off
title Multi Tools
chcp 65001 >nul

color 59
:start
:eof
call :banner

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
for /f %%A in ('"prompt $H &echo on &for %%B in (2) do rem"') do set BS=%%A
for /f %%A in ('"prompt $H &echo on &for %%B in (3) do rem"') do set BS=%%A
for /f %%A in ('"prompt $H &echo on &for %%B in (4) do rem"') do set BS=%%A
for /f %%A in ('"prompt $H &echo on &for %%B in (5) do rem"') do set BS=%%A
for /f %%A in ('"prompt $H &echo on &for %%B in (x) do rem"') do set BS=%%A

for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set X=%%A
for /f %%A in ('"prompt $H &echo on &for %%B in (2) do rem"') do set X=%%A
for /f %%A in ('"prompt $H &echo on &for %%B in (3) do rem"') do set X=%%A
for /f %%A in ('"prompt $H &echo on &for %%B in (4) do rem"') do set X=%%A

echo. ====================================
echo. {G} 	{ W I N D O W S }         {A}
echo. 	      { G }
echo. {G}	{ T O O L B O X }         {A}
echo. ====================================
echo  === (1) guessing-game^>  ==========
echo  === (2) Spotify^>  	   ==========
echo  === (3) WinUtil^>  	   ==========
echo  === (4) PymP^>     	   ==========
echo  === (5) Exit^>     	   ==========
echo  === (X) Tasklist^>	   ==========
echo. ====================================
echo. {G} { G U R R A O P T I M U S }  {A}
echo. ====================================
set /p input=.%BS% ^>

if /I %input% EQU 1 start chrome.exe
if /I %input% EQU 2 start spotify.lnk
if /I %input% EQU 3 start WinUtil.lnk
if /I %input% EQU 4 start pymp.exe
if /I %input% EQU 5 Exit

set /p input=.%X%   ^>
if /I %input% EQU x tasklist

set /p input=.%X%     ^>
if /I %input% EQU 1 taskkill /im guessing-game.bat /t /f
if /I %input% EQU 2 taskkill /im PrivateFolder.bat /t /f
if /I %input% EQU 3 taskkill /im  /t /f
if /I %input% EQU 4 taskkill /im pymp.exe /t /f
cls
goto start
goto eof
goto exit
:banner
echo.
echo.
echo		  __    __     __  __     __         ______   __        ______   ______     ______     __         ______    
echo		 /\ "-./  \   /\ \/\ \   /\ \       /\__  _\ /\ \      /\__  _\ /\  __ \   /\  __ \   /\ \       /\  ___\   
echo		 \ \ \-./\ \  \ \ \_\ \  \ \ \____  \/_/\ \/ \ \ \     \/_/\ \/ \ \ \/\ \  \ \ \/\ \  \ \ \____  \ \___  \  
echo		  \ \_\ \ \_\  \ \_____\  \ \_____\    \ \_\  \ \_\       \ \_\  \ \_____\  \ \_____\  \ \_____\  \/\_____\ 
echo		   \/_/  \/_/   \/_____/   \/_____/     \/_/   \/_/        \/_/   \/_____/   \/_____/   \/_____/   \/_____/ 
echo.
echo.
:exit                                                                                                           