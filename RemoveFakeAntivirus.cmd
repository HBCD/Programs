@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\RemoveFakeAntivirus.7z
@start "" /D"%TEMP%\HBCD" "RemoveFakeAntivirus.exe"