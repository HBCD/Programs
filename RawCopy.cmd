@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Roadkil.7z raw*
@start "" /D"%TEMP%\HBCD" "rawcopy.exe"