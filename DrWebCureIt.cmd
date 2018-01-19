@echo off
setlocal enableextensions
pushd "%~dp0"
title DrWebCureIt
if "%COMPUTERNAME:~0,6%"=="MiniXP" echo Hint: Do NOT choose EPM in the next screen
if not exist DrWebCureIt.exe goto d
:a
echo.
echo  1. Start (Press ENTER)
echo  2. Download updated version
echo.
set /p upd=Choose an option : 
if not "%upd%"=="2" goto s
:d
7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z download.exe
cd /d "%TEMP%\HBCD"
download.exe ftp://ftp.drweb.com/pub/drweb/cureit/cureit.exe /output:DrWebCureIt.exe /display:progress /overwrite
if not errorlevel 0 echo failed to download&pause&goto EOF
copy /y DrWebCureIt.exe "%~dp0"
:s
start "" DrWebCureIt.exe