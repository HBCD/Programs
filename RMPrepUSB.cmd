@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\USBGrub.7z grubin*
@7z.exe x -o"%TEMP%\HBCD" -y Files\RMPrepUSB.7z
@copy /y ..\grldr "%TEMP%\HBCD"
@start "" /D"%TEMP%\HBCD" "RMPrepUSB.exe"