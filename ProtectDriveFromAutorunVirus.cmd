@echo off
echo This will create an undeletable folder AUTORUN.INF and a file RECYCLER on
echo the drive you choose in next prompt.
echo.
echo  1. Enable
echo  2. Disable (Undo this tweak)
echo  3. Exit
echo.
set /p twk=Choose an option : 
if "%twk%"=="1" goto d
if "%twk%"=="2" goto d
exit
:d
set /p usbdr=Now Choose the Drive (eg. E) : 
if not exist %usbdr%:\nul echo Invalid Drive %usbdr%:\
if not exist %usbdr%:\nul goto d
if "%twk%"=="1" goto m
if "%twk%"=="2" goto r
exit
:m
if exist %usbdr%:\Recycler\nul rmdir /s /q \\.\\%usbdr%:\Recycler
if exist %usbdr%:\Recycler del /f /q /a %usbdr%:\Recycler
echo Hiren's BootCD> %usbdr%:\Recycler
attrib %usbdr%:\Recycler +r +s +h

if exist %usbdr%:\$Recycle.Bin\nul rmdir /s /q \\.\\%usbdr%:\$Recycle.Bin
if exist %usbdr%:\$Recycle.Bin del /f /q /a %usbdr%:\$Recycle.Bin
echo Hiren's BootCD> %usbdr%:\$Recycle.Bin
attrib %usbdr%:\$Recycle.Bin +r +s +h

if exist %usbdr%:\Recycled\nul rmdir /s /q \\.\\%usbdr%:\Recycled
if exist %usbdr%:\Recycled del /f /q /a %usbdr%:\Recycled
echo Hiren's BootCD> %usbdr%:\Recycled
attrib %usbdr%:\Recycled +r +s +h

if exist %usbdr%:\Autorun.inf del /f /q /a %usbdr%:\Autorun.inf
mkdir \\.\\%usbdr%:\Autorun.inf\nul.Hiren'sBootCD
attrib %usbdr%:\Autorun.inf +s +h
echo Folder %usbdr%:\AUTORUN.INF and File RECYCLER created
goto x
:r
rmdir /s /q \\.\\%usbdr%:\Autorun.inf
del /f /q /a %usbdr%:\Recycled
del /f /q /a %usbdr%:\Recycler
del /f /q /a %usbdr%:\$Recycle.Bin
echo Folder %usbdr%:\AUTORUN.INF and RECYCLER Files removed
:x
set usbdr=
echo.
echo Press any key to EXIT
pause>nul
