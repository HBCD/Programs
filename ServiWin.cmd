@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd ServiWin.*
@start "" /D"%TEMP%\HBCD" "ServiWin.exe"