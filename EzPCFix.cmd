@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\ezpcfix.7z
@start "" /D"%TEMP%\HBCD" "ezpcfix.exe"