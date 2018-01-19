@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\cpuz.7z
@start "" /D"%TEMP%\HBCD" "cpuz.exe"