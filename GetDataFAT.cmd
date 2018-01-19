@echo off
pushd "%~dp0"
if exist Files\GetDataB.7z goto a
title GetDataBack
echo This commercial application is not included in the package
echo Use HBCDCustomizer.exe and add HBCD\Programs\Files\GetDataB.7z
pause>nul
exit
:a
7z.exe x -o"%TEMP%\HBCD" -y Files\GetDataB.7z
REG IMPORT "%TEMP%\HBCD\Register.reg"
start "" /D"%TEMP%\HBCD" "gdb.exe"