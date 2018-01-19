@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z HDHacker.*
@start "" /D"%TEMP%\HBCD" "HDHacker.exe"