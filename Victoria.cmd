@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Victoria.7z
@start "" /D"%TEMP%\HBCD" "vcr446f.exe"