@echo off
title Multi Tools
chcp 65001 >nul

color 19
:start
:eof
:exit
call :banner

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
for /f %%A in ('"prompt $H &echo on &for %%B in (2) do rem"') do set BS=%%A
for /f %%A in ('"prompt $H &echo on &for %%B in (3) do rem"') do set BS=%%A
for /f %%A in ('"prompt $H &echo on &for %%B in (4) do rem"') do set BS=%%A
for /f %%A in ('"prompt $H &echo on &for %%B in (5) do rem"') do set BS=%%A
for /f %%A in ('"prompt $H &echo on &for %%B in (x) do rem"') do set X=%%A

for /f %%A in ('"prompt $H &echo on &for %%B in (6) do rem"') do set BS=%%A
for /f %%A in ('"prompt $H &echo on &for %%B in (7) do rem"') do set BS=%%A
for /f %%A in ('"prompt $H &echo on &for %%B in (8) do rem"') do set BS=%%A
for /f %%A in ('"prompt $H &echo on &for %%B in (9) do rem"') do set BS=%%A

for /f %%A in ('"prompt $H &echo on &for %%B in (0) do rem"') do set X=%%A


echo. ====================================
echo. {G} 	{ W I N D O W S }         {A}
echo. 	      { G }
echo. {G}	{ T O O L B O X }         {A}
echo. ====================================
echo  === (1) guessing-game^>    ==========
echo  === (2) PrivateFolder^>    ==========
echo  === (3) PwdG^>             ==========
echo  === (4) Matrix^>           ==========
echo  === (5) Speech^>           ==========
echo  === (6) speak^>            ==========
echo  === (7) remote^>           ==========
echo  === (8) error^>            ==========
echo  === (9) NetworkTool^>      ==========
echo  === (X) Tasklist^>         ==========
echo. ====================================
echo. {G} { G U R R A O P T I M U S }  {A}
echo. ====================================
set /p input=.%BS% ^>

if /I %input% EQU 1 start guessing-game.bat
if /I %input% EQU 2 start PrivateFolder.bat
if /I %input% EQU 3 start pwdG.bat
if /I %input% EQU 4 start matrix.bat
if /I %input% EQU 5 start speech.bat
if /I %input% EQU 6 start speak.vbs
if /I %input% EQU 7 start remote.bat
if /I %input% EQU 8 start error.vbs
if /I %input% EQU 9 start networktool.bat

if /I %input% EQU x tasklist
set /p input=.%X% ^>
if /I %input% EQU 1 taskkill /im cmd.exe /t /f

cls
goto start
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