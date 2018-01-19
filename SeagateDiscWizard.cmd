@echo off
pushd "%~dp0"
7z.exe x -o"%TEMP%\HBCD" -y Files\SeagateDiscWizard.7z
if "%COMPUTERNAME:~0,6%"=="MiniXP" goto z
echo Sorry but this only works from Mini Windows Xp
pause>nul
exit
:z
start "" /D"%TEMP%\HBCD" "DiscWizard.exe"
start "" "AutoIt3.exe" "%TEMP%\HBCD\starter.aut"
