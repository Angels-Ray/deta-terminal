$token = "$Env:TOKEN"
$vbscript = "$env:temp\sendkeys.vbs"

@"
Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run "cmd /K space login", 9, false
WScript.Sleep 2000
WshShell.SendKeys "$token{ENTER}"
WScript.Sleep 2000
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys "exit"
WshShell.SendKeys "{ENTER}"
"@ | Out-File -FilePath $vbscript -Force -Encoding ASCII

Start-Process -FilePath "cscript.exe" -ArgumentList "//nologo", $vbscript -NoNewWindow -Wait

Remove-Item -Path $vbscript -Force
