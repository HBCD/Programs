@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\XpAntiSpy.7z
@start "" /D"%TEMP%\HBCD" "XpAntiSpy.exe"