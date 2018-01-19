@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\TightVNC.7z
@start "" /D"%TEMP%\HBCD" "tvnserver.exe"