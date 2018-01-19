@echo off
pushd "%~dp0"
if exist "%TEMP%\HBCD\DiskGenius.exe" goto z
7z.exe x -o"%TEMP%\HBCD" -y Files\DiskGenius.7z
7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd RunAsDate.exe
:z
start "" /D"%TEMP%\HBCD" "RunAsDate.exe" 14\02\2005 "%TEMP%\HBCD\DiskGenius.exe"
