@echo off
pushd "%~dp0"
7z.exe x -o"%TEMP%\HBCD" -y Files\RevoUninstaller.7z
if not exist "%TEMP%\HBCD\settings.ini" (
echo [General\]
echo AU on startup=^0
)>"%TEMP%\HBCD\settings.ini"
start "" /D"%TEMP%\HBCD" "RevoUninstaller.exe"