@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z guiformat.exe
@start "" /D"%TEMP%\HBCD" "guiformat.exe"