@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\MBRCheck.7z
@start "" /D"%TEMP%\HBCD" "MBRCheck.exe"
