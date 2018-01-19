@echo off
pushd "%~dp0"
if not exist "%TEMP%\HBCD\Opera\Opera.exe" 7z.exe x -o"%TEMP%\HBCD\Opera" -y Files\Opera.7z
if not "%TORB%"=="1" goto s
copy /y "%TEMP%\HBCD\Opera\profile\operaprefs.ini" "%TEMP%\HBCD\Opera\profile\operaprefs.org">nul
(echo [Proxy]&echo SOCKS server=127.0.0.1:9050&echo Use SOCKS=1)>>"%TEMP%\HBCD\Opera\profile\operaprefs.ini"
7z.exe x -o"%TEMP%\HBCD\Tor" -y Files\Tor.7z
:s
if exist "%TEMP%\HBCD\Opera\profile\operaprefs.org" start "Tor" /min /D"%TEMP%\HBCD\Tor" "%TEMP%\HBCD\Tor\tor.exe" -f tor.ini
start "" /Max /D"%TEMP%\HBCD\Opera" "Opera.exe" %*
exit