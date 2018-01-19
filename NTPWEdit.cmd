@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\NTPWEdit.7z
@start "" /D"%TEMP%\HBCD" "NTPWEdit.exe"