@pushd "%~dp0"
@if "%COMPUTERNAME:~0,6%"=="MiniXP" echo This program does not work from MiniXP&echo You can run it from your installed Windows XP/Vista/7&pause
@7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z srunners.vbs
@start "" /D"%TEMP%\HBCD" "srunners.vbs" c:\