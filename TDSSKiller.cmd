@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\TDSSKiller.7z
@start "" /D"%TEMP%\HBCD" "TDSSKiller.exe"