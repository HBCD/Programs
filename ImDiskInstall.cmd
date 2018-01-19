@echo off
pushd "%~dp0"
if exist "%SYSTEMROOT%\System32\imdisk.exe" goto r
title ImDisk Virtual Disk
echo This is not a portable application and will install ImDisk driver which can be
echo uninstalled.
echo.
echo Press ENTER to continue (or close this window to cancel)
pause>nul
7z.exe x -o"%TEMP%\HBCD\Imdisk" -y Files\ImDisk.7z
set runsix=cmd.exe /C 
if exist %SYSTEMROOT%\sysnative\cmd.exe set runsix="%SYSTEMROOT%\sysnative\cmd.exe" /C 
start "" /WAIT /D"%TEMP%\HBCD\Imdisk" %runsix% .\installim.cmd
:r
start imdisk.cpl
