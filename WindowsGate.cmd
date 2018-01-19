@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\WindowsGate.7z
@start "" /D"%TEMP%\HBCD" "WindowsGate.exe"