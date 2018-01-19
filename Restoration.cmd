@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Restoration.7z
@start "" /D"%TEMP%\HBCD" "Restoration.exe"