@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\ClearLock.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\ClearLock.7z
@start "" /D"%TEMP%\HBCD" "ClearLock.exe"