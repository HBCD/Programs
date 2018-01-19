@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\USBGrub.7z f*
@copy /y ..\grldr "%TEMP%\HBCD">nul
@start "" /D"%TEMP%\HBCD" "fbinsthelper.cmd"