@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\HDDLowLevelFormat.7z
@start "" /D"%TEMP%\HBCD" "LLFTOOL.EXE"