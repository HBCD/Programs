@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z dtemp*
@start "" /D"%TEMP%\HBCD" "dtemp.exe"