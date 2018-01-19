@pushd "%~dp0"
@if "%COMPUTERNAME:~0,6%"=="MiniXP" echo TeamViewer 7 does not work from MiniXP&echo You can run it from your installed Windows XP/Vista/7&pause
@if not exist "%TEMP%\HBCD\TeamViewer.exe" 7z.exe e -o"%TEMP%\HBCD" -y Files\TeamViewer.7z 7\*
@start "" /D"%TEMP%\HBCD" "TeamViewer.exe"