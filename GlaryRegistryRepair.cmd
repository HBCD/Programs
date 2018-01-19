@pushd "%~dp0"
@if "%COMPUTERNAME:~0,6%"=="MiniXP" echo This program may not work well from MiniXP as it will clean the registry of the running system which is minixp&echo You can run it from your installed Windows XP/Vista/7 (try from Safe Mode)&pause
@if not exist "%TEMP%\HBCD\regrepair.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\GlaryRegistryRepair.7z
@start "" /D"%TEMP%\HBCD" "regrepair.exe"