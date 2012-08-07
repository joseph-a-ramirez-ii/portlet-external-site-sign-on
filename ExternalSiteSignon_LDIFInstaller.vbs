
set wshShell = Wscript.createobject("wscript.shell")

wshShell.run "%COMSPEC% /k C:\WINDOWS\ADAM\ldifde.exe  -i -f ExternalSiteSignon.ldf -c ""CN=Schema,CN=Configuration,CN=X"" ""#schemaNamingContext"" -k -s localhost:389 -v"
