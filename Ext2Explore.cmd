@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Ext2Explore.7z
@start "" /D"%TEMP%\HBCD" "Ext2Explore.exe"