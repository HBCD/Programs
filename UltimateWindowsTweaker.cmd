@pushd "%~dp0"
@if "%COMPUTERNAME:~0,6%"=="MiniXP" echo This program does not work from MiniXP&echo You can run it from your installed Windows Vista/7&pause
@7z.exe x -o"%TEMP%\HBCD" -y Files\UltimateWindowsTweaker.7z
@start "" /D"%TEMP%\HBCD" "UltimateWindowsTweaker.exe"