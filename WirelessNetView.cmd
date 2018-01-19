@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\WirelessNetView.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd WirelessNetView.*
@start "" /D"%TEMP%\HBCD" "WirelessNetView.exe"