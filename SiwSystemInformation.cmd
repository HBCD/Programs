@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD\SIW" -y Files\SIW.7z
@start "" /D"%TEMP%\HBCD\SIW" "SIWPortable.exe"
