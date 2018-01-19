@echo off
pushd "%~dp0"
if exist Files\Undelete.7z goto a
title Undelete
echo This commercial application is not included in the package
echo Use HBCDCustomizer.exe and add HBCD\Programs\Files\Undelete.7z
pause>nul
exit
:a
7z.exe x -o"%TEMP%\HBCD" -y Files\Undelete.7z
start "" /D"%TEMP%\HBCD" "undelete.exe"