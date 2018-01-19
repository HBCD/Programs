@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\TrueCrypt\TrueCrypt.exe" 7z.exe x -o"%TEMP%\HBCD\TrueCrypt" -y Files\TrueCrypt.7z
@start "" /D"%TEMP%\HBCD\TrueCrypt" "TrueCrypt.exe" %*
@exit