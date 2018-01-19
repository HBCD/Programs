@echo off
pushd "%~dp0"
if exist Files\ERD.7z goto a
title ERDComputerManagement
echo This commercial application is not included in the package
echo Use HBCDCustomizer.exe and add HBCD\Programs\Files\ERD.7z
pause>nul
exit
:a
if "%COMPUTERNAME:~0,6%"=="MiniXP" goto z
echo You should only Run this from Mini Windows Xp&pause
:z
7z.exe x -o"%TEMP%\HBCD" -y Files\ERD.7z
set TARGET_ROOT=C:\Windows
set /p TARGET_ROOT=Enter Path of the windows (or Press Enter for %TARGET_ROOT%) :
setx TARGET_ROOT %TARGET_ROOT% -m
start "" /D"%TEMP%\HBCD" "CompMgmt.exe"