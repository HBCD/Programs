@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd ProduKey.*
@start "" /D"%TEMP%\HBCD" "ProduKey.exe"