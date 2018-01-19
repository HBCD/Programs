@echo off
pushd "%~dp0"
if exist ..\Dos\BiosBoot.7z goto a
if exist ..\Boot\dos.img 7z.exe x -o"%TEMP%\HBCD" -y ..\Boot\dos.img BiosBoot.7z
if exist "%TEMP%\HBCD\BiosBoot.7z" 7z.exe x -o"%TEMP%\HBCD" -y "%TEMP%\HBCD\BiosBoot.7z"&goto b
echo File Missing: HBCD\Dos\BiosBoot.7z&pause>nul&exit
:a
7z.exe x -o"%TEMP%\HBCD" -y ..\Dos\BiosBoot.7z d*
:b
cd /d "%TEMP%\HBCD"
echo.|diskman4.exe>diskman4.txt
start "" "%TEMP%\HBCD\diskman4.txt"
start "diskman4.exe" /D"%TEMP%\HBCD" "cmd.exe /k "%TEMP%\HBCD\diskman4.exe"
pause