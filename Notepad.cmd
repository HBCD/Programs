@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\Notepad\Notepad++.exe" 7z.exe x -o"%TEMP%\HBCD\Notepad" -y Files\Notepad.7z
@start "" /D"%TEMP%\HBCD\Notepad" "Notepad++.exe" %*