@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z RemoveWGA.exe
@start "" /D"%TEMP%\HBCD" "RemoveWGA.exe"