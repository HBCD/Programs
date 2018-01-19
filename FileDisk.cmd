@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\fdloader.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\FileDisk.7z
@start "" /D"%TEMP%\HBCD" "fdloader.exe"