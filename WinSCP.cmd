@echo off
pushd "%~dp0"
if exist "%TEMP%\HBCD\WinSCP.exe" goto a
7z.exe x -o"%TEMP%\HBCD" -y Files\WinSCP.7z
7z.exe x -o"%TEMP%\HBCD" -y Files\PuTTY.7z
:a
start "" /D"%TEMP%\HBCD" "WinSCP.exe"