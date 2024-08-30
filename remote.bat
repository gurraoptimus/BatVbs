@echo off
title=Remote Desktop %host% %user%
set /p host="host>> "
set /p user="username>> "
set /p pass="password>> "
cmdkey /add:%host% /user:%user% /pass:%pass% >nul
mstsc /v:%host%
cmdkey /delete:%host% >nul