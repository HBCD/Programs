@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\IsoBuster.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\IsoBuster.7z
@start "" /D"%TEMP%\HBCD" "IsoBuster.exe"