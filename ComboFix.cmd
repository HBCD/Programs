@pushd "%~dp0"
@title ComboFix
@if "%COMPUTERNAME:~0,6%"=="MiniXP" echo This program does not work from MiniXP&echo You can run it from your installed Windows XP/Vista/7 (try from Safe Mode)&pause
@copy /y ComboFix.exe "%temp%\explorer.exe"
@CD /D "%temp%"
@START "" "%temp%\explorer.exe"