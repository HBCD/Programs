@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\MBRWiz.7z
@start "mbrwiz.exe" /D"%TEMP%\HBCD" "cmd.exe" /k "%TEMP%\HBCD\mbrwiz.exe" /?