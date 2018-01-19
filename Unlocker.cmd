@echo off
pushd "%~dp0"
if exist "%TEMP%\HBCD\Unlocker\UnlockerAssistant.exe" goto s
7z.exe x -o"%TEMP%\HBCD\Unlocker" -y Files\Unlocker.7z
if defined ProgramFiles(x86) (copy /y "%TEMP%\HBCD\Unlocker\x64\*.*" "%TEMP%\HBCD\Unlocker")
:s
start "" /D"%TEMP%\HBCD\Unlocker" "UnlockerAssistant.exe"
echo Unlocker Assistant is running in System Tray,
echo Now you can try to delete a Locked item.
pause>nul