@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z XP-Key-Reader.exe
@start "" /D"%TEMP%\HBCD" "XP-Key-Reader.exe"