@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\HDTune.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\HDTune.7z
@start "" /D"%TEMP%\HBCD" "HDTune.exe"