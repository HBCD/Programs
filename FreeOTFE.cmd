@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\FreeOTFE.7z
@start "" /D"%TEMP%\HBCD" "FreeOTFE.exe"