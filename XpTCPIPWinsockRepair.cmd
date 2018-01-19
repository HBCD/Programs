@echo off
pushd "%~dp0"
7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z netrepai.exe
echo Please Note:
echo Windows Xp SP2 has a built-in function to repair winsock
echo.
echo type this in command prompt
echo netsh winsock reset
echo.
echo Press any key to continue loading this program
pause>nul
start "" /D"%TEMP%\HBCD" "netrepai.exe"