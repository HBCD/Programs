@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\ODIN.7z
@if not defined APPDATA set APPDATA=%USERPROFILE%\AppData\Roaming
@if not exist "%APPDATA%\ODIN\ODIN.ini" mkdir "%APPDATA%\ODIN"&(echo [Options]&echo CompressionMode=1&echo TakeVSSSnapshot=1&echo [DialogOptions]&echo NotShowSplashDlg=1)>"%APPDATA%\ODIN\ODIN.ini"
@start "" /D"%TEMP%\HBCD" "ODIN.exe"