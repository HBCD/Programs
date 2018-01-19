@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\DiskDigger.7z
@start "" /D"%TEMP%\HBCD" "DiskDigger.exe"