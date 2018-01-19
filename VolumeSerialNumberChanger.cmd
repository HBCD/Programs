@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z VolumeSerial.exe
@start "" /D"%TEMP%\HBCD" "VolumeSerial.exe"