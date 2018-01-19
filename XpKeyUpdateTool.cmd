@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\XpKeyUpdateTool.7z
@start "" /D"%TEMP%\HBCD" "KeyUpdateTool.exe"
