@echo off
pushd "%~dp0"
if not exist "%TEMP%\HBCD\PuTTY.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\PuTTY.7z
if exist "%TEMP%\HBCD\sessions\Default%%20Settings" goto a
mkdir "%TEMP%\HBCD\sessions"
(echo.|set /p ="TrayRestore\1\") > "%TEMP%\HBCD\sessions\Default%%20Settings"
:a
start "" /D"%TEMP%\HBCD" "PuTTY.exe"