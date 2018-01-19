@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z RouterPasswords.html
@start "" /D"%TEMP%\HBCD" "RouterPasswords.html"