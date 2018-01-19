@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\H2testw.7z
@start "" /D"%TEMP%\HBCD" "H2testw.exe"