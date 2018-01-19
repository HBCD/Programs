@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Prime95.7z
@start "" /D"%TEMP%\HBCD" "Prime95.exe"