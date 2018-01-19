@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\VideoMemoryStressTest.7z
@start "" /D"%TEMP%\HBCD" "vmt.exe"