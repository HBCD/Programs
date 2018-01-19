@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\GImageX.7z
@start "" /D"%TEMP%\HBCD" "GImageX.exe"