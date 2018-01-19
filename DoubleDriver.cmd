@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\DoubleDriver.7z
@start "" /D"%TEMP%\HBCD" "dd.exe"