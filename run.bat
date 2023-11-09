set "token=E5rdeSqd_4jaKrHWNiuaigPiZKKpXQknpWw5jHvnk"
set "vbscript=%temp%\sendkeys.vbs"
(echo Set WshShell = WScript.CreateObject^("WScript.Shell"^)
echo WshShell.Run "cmd /K space login", 9, false
echo WScript.Sleep 2000
echo WshShell.SendKeys "%token%{ENTER}"
echo WScript.Sleep 2000
echo WshShell.SendKeys "{ENTER}"
) > "%vbscript%"

cscript //nologo "%vbscript%"
del "%vbscript%"
