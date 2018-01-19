@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\PasswordRenew.7z
@start "" /D"%TEMP%\HBCD" "PasswordRenew.exe"