@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd RunAsDate.*
@start "" /D"%TEMP%\HBCD" "RunAsDate.exe"