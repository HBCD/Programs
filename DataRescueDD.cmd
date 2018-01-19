@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\DataRescueDD.7z
@start "" /D"%TEMP%\HBCD" "drdd.exe"