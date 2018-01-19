@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\Spread32.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\Spread32.7z
@start "" /MAX /D"%TEMP%\HBCD" "Spread32.exe" %*
@exit