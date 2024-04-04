Dim message, SAPI
message=inputbox("What do you want me to say?","speak to Me")
Set SAPI=CreateObject("SAPI.spVoice")
SAPI.speak message
