@echo off
pushd "%~dp0"
if exist "%TEMP%\HBCD\DontSleep.exe" goto a
7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z DontSleep.exe
(echo [Program]&echo block_screensaver=0)>"%TEMP%\HBCD\DontSleep.ini"
:a
start "" /D"%TEMP%\HBCD" "DontSleep.exe"
