@echo off
pushd "%~dp0"
if exist "%TEMP%\HBCD\TotalCmd\TotalCmd.exe" goto z
7z.exe x -o"%TEMP%\HBCD\TotalCmd" -y Files\TotalCmd.7z
if "%COMPUTERNAME:~0,6%"=="MiniXP" goto z
7z.exe x -o"%TEMP%\HBCD\TotalCmd" -y Files\Xpfiles.7z aut*
:z
cd /d "%TEMP%\HBCD\TotalCmd"
start "" TotalCmd.exe
start "" AutoIt3.exe starter.aut