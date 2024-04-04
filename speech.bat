@echo off

title talking batchfile
COLOR 8C
echo set speech=Wscript.CreateObject("SAPI.spVoice") >> "temp.vbs"
set txt=Hello,this is a talking batch file script, and see you bye bye.
echo speech.speak "%txt%">> "temp.vbs"
pause
start temp.vbs
timeout 5
del temp.vbs
exit
