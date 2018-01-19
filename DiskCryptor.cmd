@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\DiskCryptor.7z
@start "" /D"%TEMP%\HBCD" "dcrypt.exe"