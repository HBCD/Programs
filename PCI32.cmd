@echo off
pushd "%~dp0"
if exist ..\Dos\PCI32.7z goto a
if exist ..\Boot\dos.img 7z.exe x -o"%TEMP%\HBCD" -y ..\Boot\dos.img PCI32.7z
if exist "%TEMP%\HBCD\PCI32.7z" 7z.exe x -o"%TEMP%\HBCD" -y "%TEMP%\HBCD\PCI32.7z"&goto b
echo File Missing: HBCD\Dos\PCI32.7z&pause>nul&exit
:a
7z.exe x -o"%TEMP%\HBCD" -y ..\Dos\PCI32.7z
:b
cd /d "%TEMP%\HBCD"
"%TEMP%\HBCD\PCI32.exe"
"%TEMP%\HBCD\PCI32.exe" > "%TEMP%\HBCD\PCI32.txt"
start "" "%TEMP%\HBCD\PCI32.txt"
echo. Press any key to exit.
pause>nul