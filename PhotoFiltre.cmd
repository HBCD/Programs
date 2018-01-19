@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\PhotoFiltre\PhotoFiltre.exe" 7z.exe x -o"%TEMP%\HBCD\PhotoFiltre" -y Files\PhotoFiltre.7z
@start "" /D"%TEMP%\HBCD\PhotoFiltre" "PhotoFiltre.exe"