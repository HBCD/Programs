@echo off
pushd "%~dp0"
if exist ..\Dos\SavePart.7z goto a
if exist ..\Boot\dos.img 7z.exe x -o"%TEMP%\HBCD" -y ..\Boot\dos.img SavePart.7z
if exist "%TEMP%\HBCD\SavePart.7z" 7z.exe x -o"%TEMP%\HBCD" -y "%TEMP%\HBCD\SavePart.7z"&goto b
echo File Missing: HBCD\Dos\SavePart.7z&pause>nul&exit
:a
7z.exe x -o"%TEMP%\HBCD" -y ..\Dos\SavePart.7z
:b
start "" /D"%TEMP%\HBCD" "spartwin.exe"