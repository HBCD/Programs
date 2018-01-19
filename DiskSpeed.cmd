@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Roadkil.7z DskSpeed.exe
@start "" /D"%TEMP%\HBCD" "DskSpeed.exe"