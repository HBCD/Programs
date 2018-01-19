@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\DupFinder.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\DupFinder.7z
@start "" /D"%TEMP%\HBCD" "DupFinder.exe"