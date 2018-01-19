@echo off
pushd "%~dp0"
if exist "%TEMP%\HBCD\IrfanView\i_view32.exe" goto s
7z.exe x -o"%TEMP%\HBCD\IrfanView" -y Files\IrfanView.7z
for /f "tokens=2,*" %%a in ('reg query "hkcu\software\microsoft\windows\currentversion\explorer\user shell folders" /v Desktop^|find /i "Desktop"') do (echo [Open]&echo OpenDir=%%b&echo [Save]&echo SaveDir=%%b)>>"%TEMP%\HBCD\IrfanView\i_view32.ini"
:s
start "" /D"%TEMP%\HBCD\IrfanView" "i_view32.exe" %*