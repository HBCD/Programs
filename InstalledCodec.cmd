@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd InstalledCodec.*
@start "" /D"%TEMP%\HBCD" "InstalledCodec.exe"