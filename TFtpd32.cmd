@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\TFtpd32.7z
@copy /y ..\grldr "%TEMP%\HBCD">nul
@start "" /D"%TEMP%\HBCD" "TFtpd32.exe"