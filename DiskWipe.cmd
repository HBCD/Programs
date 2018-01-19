@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Roadkil.7z DiskWipe.exe
@start "" /D"%TEMP%\HBCD" "DiskWipe.exe"