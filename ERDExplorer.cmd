@echo off
pushd "%~dp0"
if exist Files\ERD.7z goto a
title ERDExplorer
echo This commercial application is not included in the package
echo Use HBCDCustomizer.exe and add HBCD\Programs\Files\ERD.7z
pause>nul
exit
:a
7z.exe x -o"%TEMP%\HBCD" -y Files\ERD.7z
start "" /D"%TEMP%\HBCD" "ERDExplorer.exe"