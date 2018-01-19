@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\DiskInfo.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\CrystalDiskInfo.7z
@if "%COMPUTERNAME:~0,6%"=="MiniXP" echo This program requires Internet Explorer so does not work from MiniXP&echo copy mshtml.tlb and mshtml.dll from xp and register the dll and try it.&pause
@start "" /D"%TEMP%\HBCD" "DiskInfo.exe"