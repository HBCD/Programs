@echo off
pushd "%~dp0"
if exist Files\Ghost32.7z goto a
title GhostExlplorer
echo This commercial application is not included in the package
echo Use HBCDCustomizer.exe and add HBCD\Programs\Files\Ghost32.7z
pause>nul
exit
:a
7z.exe x -o"%TEMP%\HBCD" -y Files\Ghost32.7z Ghostexp.exe
start "" /D"%TEMP%\HBCD" "GhostExp.exe" %1
exit