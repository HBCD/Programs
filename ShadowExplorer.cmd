@pushd "%~dp0"
@title ShadowExplorer
@if "%COMPUTERNAME:~0,6%"=="MiniXP" echo This program does not work from MiniXP&echo You can run it from your installed Windows XP/Vista/7&pause
@if not exist "%TEMP%\HBCD\ShadowExplorer.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\ShadowExplorer.7z
@start "" /D"%TEMP%\HBCD" "ShadowExplorer.exe"