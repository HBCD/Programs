@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\SpaceSniffer.7z
@start "" /D"%TEMP%\HBCD" "SpaceSniffer.exe"