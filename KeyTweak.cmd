@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z KeyTweak.exe
@start "" /D"%TEMP%\HBCD" "KeyTweak.exe"