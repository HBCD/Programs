@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\SelfImage.7z
@start "" /D"%TEMP%\HBCD" "SelfImage.exe"