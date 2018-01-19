@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\CloneDisk.7z
@start "" /D"%TEMP%\HBCD" "CloneDisk.exe"