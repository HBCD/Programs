@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z IsMyLcdOK.*
@start "" /D"%TEMP%\HBCD" "IsMyLcdOK.exe"