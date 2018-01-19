@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\HxD.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\HxD.7z
@start "" /D"%TEMP%\HBCD" "HxD.exe" %*
@exit