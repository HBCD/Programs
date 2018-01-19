@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\HDDscan.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\HDDscan.7z
@start "" /D"%TEMP%\HBCD" "HDDscan.exe"