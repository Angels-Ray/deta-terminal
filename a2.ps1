$folderName = (Get-Location).Path | Split-Path -Leaf
Write-Output $folderName
$vbscript = "$env:temp\sendkeys.vbs"
@"
Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run "cmd /K space new", 9, false
WScript.Sleep 4000
WshShell.SendKeys "$folderName"
WScript.Sleep 4000
WshShell.SendKeys "{ENTER}"
WScript.Sleep 4000
WshShell.SendKeys "y"
WScript.Sleep 4000
WshShell.SendKeys "{ENTER}"
WScript.Sleep 4000
WshShell.SendKeys "exit"
"@ | Out-File -FilePath $vbscript -Force -Encoding ASCII

Start-Process -FilePath "cscript.exe" -ArgumentList "//nologo", $vbscript -NoNewWindow -Wait

Remove-Item -Path $vbscript -Force
