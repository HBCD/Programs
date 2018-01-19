@echo off
pushd "%~dp0"
:A
echo.
echo  1. Set USB Devices as Read Only on this PC
echo  2. Set USB Devices as Read and Write on this PC
echo  3. Exit
echo.
set /p usbd=Choose an option : 
SET _REG=reg add "HKLM\SYSTEM\ControlSet001\Control\StorageDevicePolicies" /f /t REG_DWORD /v WriteProtect /d
if "%usbd%"=="1" %_REG% 1
if "%usbd%"=="2" %_REG% 0
if "%usbd%"=="3" exit
set usbd=
echo Press any key to EXIT
pause>nul