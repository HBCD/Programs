@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\CloneSpy.7z
@start "" /D"%TEMP%\HBCD" "CloneSpy.exe"