@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\WifiInfoView.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd WifiInfoView.*
@start "" /D"%TEMP%\HBCD" "WifiInfoView.exe"