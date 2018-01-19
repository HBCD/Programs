@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\WinDirStat.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\WinDirStat.7z
@start "" /D"%TEMP%\HBCD" "WinDirStat.exe"