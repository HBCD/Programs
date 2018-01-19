@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd conadvpass.*
@start "" /D"%TEMP%\HBCD" "conadvpass.exe"