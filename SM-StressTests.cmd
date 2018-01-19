@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\SM-StressTests.7z
@start "" /D"%TEMP%\HBCD" "sm.exe"