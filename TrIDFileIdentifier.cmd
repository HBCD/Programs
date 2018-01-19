@echo off
pushd "%~dp0"
7z.exe x -o"%TEMP%\HBCD" -y Files\TrID.7z
cd /d "%TEMP%\HBCD"
set trfn=%*
title TrID File Identifier
cls
:a
if %1#==# echo Drag and drop unknown file here or type full path (type C for commandline/help)&echo.&set /p trfn=File :
set trfn=%trfn:"=%
if /i %trfn%#==C# start "trid.exe" /d"%TEMP%\HBCD" cmd /k trid.exe -?&exit
trid.exe "%trfn%"
echo.
goto a