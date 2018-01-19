@echo off
pushd "%~dp0"
echo Note: If you use the trial version of Image for Windows to make a backup, you   will be able to restore that image for 30 days.
if not exist "%TEMP%\HBCD\imagew.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\ImageForWindows*.7z
if X%1==XV start "" /D"%TEMP%\HBCD" "tbiview.exe" %2&exit
REM (echo [License]&echo Key=Your Name XXXX-XXXX-XXXX-XXXX-XXXX-XXXX-XXXX-XXXX)>"%TEMP%\HBCD\imagew.ini"
start "" /D"%TEMP%\HBCD" "imagew.exe"

if exist ..\Dos\Img4Dos.7z goto a
if exist ..\Boot\dos.img 7z.exe x -o"%TEMP%\HBCD" -y ..\Boot\dos.img Img4Dos.7z
if exist "%TEMP%\HBCD\Img4Dos.7z" 7z.exe x -o"%TEMP%\HBCD" -y "%TEMP%\HBCD\Img4Dos.7z"&goto b
:a
7z.exe x -o"%TEMP%\HBCD" -aos ..\Dos\Img4Dos.7z c*
:b
