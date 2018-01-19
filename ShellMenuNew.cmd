@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd ShellMenuNew.*
@start "" /D"%TEMP%\HBCD" "ShellMenuNew.exe"