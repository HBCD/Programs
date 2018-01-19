@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\GMER.7z
@start "" /D"%TEMP%\HBCD" "G-MER.exe"