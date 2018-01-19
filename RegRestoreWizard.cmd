@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z regreswiz.exe
@start "" /D"%TEMP%\HBCD" "regreswiz.exe"