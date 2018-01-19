@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\MyDefrag.7z
@start "" /D"%TEMP%\HBCD" "MyDefrag.exe"
