@echo off
color 8f
:Start2
cls
goto Start
:Start
title Password Generator
echo ============================================================
echo I will make you a new Password.
echo Plz write the password down somewhere in case you forget it.
echo ============================================================
echo 1) 1 Random Password
echo 2) 5 Random Passwords
echo 3) 10 Random Passwords
echo Input your choice:
set input=
set /p input= choice:
if %input%==1 goto A if NOT goto Start2
if %input%==2 goto B if NOT goto Start2
if %input%==3 goto C if NOT goto Start2
pause
exit