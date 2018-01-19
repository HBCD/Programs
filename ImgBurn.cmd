@echo off
pushd "%~dp0"
7z.exe x -o"%TEMP%\HBCD" -y Files\ImgBurn.7z
if not exist "%TEMP%\HBCD\ImgBurn.ini" (echo [Settings]&echo EVENTS_CheckForProgramUpdate=0&echo PortableMode=1&echo SOUNDS_PlaySuccessSound=0&echo SOUNDS_PlayErrorSound=0)>"%TEMP%\HBCD\ImgBurn.ini"
start "" /D"%TEMP%\HBCD" "ImgBurn.exe" /PORTABLE