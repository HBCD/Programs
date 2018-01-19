@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z RRT.exe
@start "" /D"%TEMP%\HBCD" "RRT.exe"