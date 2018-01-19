@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd SniffPass.*
@start "" /D"%TEMP%\HBCD" "SniffPass.exe"