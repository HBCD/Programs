@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z memtest.exe
@start "" /D"%TEMP%\HBCD" "memtest.exe"