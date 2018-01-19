@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Sysinternals.7z newsid.exe
@start "" /D"%TEMP%\HBCD" "newsid.exe"