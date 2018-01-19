@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\HDDscan.7z hddscan28*
@start "" /D"%TEMP%\HBCD" "HDDscan28.exe"