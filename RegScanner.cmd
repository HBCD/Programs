@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd RegScanner.*
@start "" /D"%TEMP%\HBCD" "RegScanner.exe"