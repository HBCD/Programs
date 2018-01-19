@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Roadkil.7z UnstopCpy.exe
@start "" /D"%TEMP%\HBCD" "UnstopCpy.exe"