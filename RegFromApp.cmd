@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd RegFromApp.*
@start "" /D"%TEMP%\HBCD" "RegFromApp.exe"