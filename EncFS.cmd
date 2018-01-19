@echo off
if "%COMPUTERNAME:~0,6%"=="MiniXP" echo Please use Total Commander/7zip File Manager to view the mounted drive in MiniXP&goto a
echo.
echo To run EncFS you have to install Dokan Driver, it will be installed automaticly.
echo Please close this window if you do not want to run/install this
echo.
echo Press ENTER to continue.
pause>nul
:a
echo.
echo Please look in the system tray (bottom right) for a key icon.
echo.
pushd "%~dp0"
if not exist "%TEMP%\HBCD\EncFS\encfsw.exe" 7z.exe x -o"%TEMP%\HBCD\EncFS" -y Files\EncFS.7z
if exist %SystemRoot%\System32\dokan.dll goto e
pause
:i
7z.exe x -o"%TEMP%\HBCD\EncFS" -y Files\Xpfiles.7z aut*>nul
cd /d "%TEMP%\HBCD\EncFS"
set runsix=cmd.exe /C 
if exist %SYSTEMROOT%\sysnative\cmd.exe set runsix="%SYSTEMROOT%\sysnative\cmd.exe" /C 
start "" /WAIT /D"%TEMP%\HBCD\EncFS" %runsix% "DokanInstall_0.6.0.exe" /S
start "" autoit3 a.au3
set enins=1
:e
start "" /D"%TEMP%\HBCD\EncFS" "encfsw.exe"
if "%enins%"=="1" pause>nul