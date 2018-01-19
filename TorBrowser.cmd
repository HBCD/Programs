@echo off
pushd "%~dp0"
if exist "%TEMP%\HBCD\Opera\profile\operaprefs.org" goto u
goto s
:u
echo To DISABLE TOR:
echo Please close Opera and press ENTER
pause>nul
del "%TEMP%\HBCD\Opera\profile\operaprefs.ini"
ren "%TEMP%\HBCD\Opera\profile\operaprefs.org" *.ini
set TORB=
exit
:s
set TORB=1
OperaWebBrowser.cmd