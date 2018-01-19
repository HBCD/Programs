@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\SystemExplorer.7z
@start "" /D"%TEMP%\HBCD" "SystemExplorer.exe"