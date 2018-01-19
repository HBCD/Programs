@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Explore2fs.7z
@start "" /D"%TEMP%\HBCD" "Explore2fs.exe"