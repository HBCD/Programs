@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\TestDisk.7z
@start "" /D"%TEMP%\HBCD" "testdisk_win.exe"