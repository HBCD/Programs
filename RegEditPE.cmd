@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\RegEditPE.7z
@start "" /D"%TEMP%\HBCD" "RegEditPE.exe"