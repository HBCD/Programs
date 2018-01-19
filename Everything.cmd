@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\Everything.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\Everything.7z
@start "" /D"%TEMP%\HBCD" "Everything.exe"