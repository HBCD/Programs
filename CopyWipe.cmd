@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\CopyWipeW.7z
@start "" /D"%TEMP%\HBCD" "CopyWipeW.exe"