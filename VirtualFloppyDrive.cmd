@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\vfdwin.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\VFD.7z
@start "" /D"%TEMP%\HBCD" "vfdwin.exe"