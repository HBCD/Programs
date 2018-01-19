@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\ntregopt.7z
@start "" /D"%TEMP%\HBCD" "ntregopt.exe"