Set WshShell = CreateObject("WScript.Shell")

WshShell.Run chr(34) & "C:\Windows\System32\startup.bat" & Chr(34), 0

Set WshShell = Nothing