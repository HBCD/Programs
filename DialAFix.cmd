@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\dialafix.7z
@start "" /D"%TEMP%\HBCD" "dialafix.exe"