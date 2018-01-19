@echo off
setlocal enableextensions
pushd "%~dp0"
title SuperAntispyware
if not exist SuperAntispyware.exe goto d
echo.
echo  1. Start (Press ENTER)
echo  2. Download updated version
echo.
set /p upd=Choose an option : 
if not "%upd%"=="2" goto s
:d
7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z download.exe
cd /d "%TEMP%\HBCD"
download.exe http://www.superantispyware.com/sasportablehome.php /output:SuperAntispyware.exe /display:progress /overwrite
if not errorlevel 0 echo failed to download&pause&goto EOF
copy /y SuperAntispyware.exe "%~dp0"
:s
start "" SuperAntispyware.exe