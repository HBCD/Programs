@echo off
pushd "%~dp0"
if exist ..\Dos\MBRUtil.7z goto a
if exist ..\Boot\dos.img 7z.exe x -o"%TEMP%\HBCD" -y ..\Boot\dos.img MBRUtil.7z
if exist "%TEMP%\HBCD\MBRUtil.7z" 7z.exe x -o"%TEMP%\HBCD" -y "%TEMP%\HBCD\MBRUtil.7z"&goto b
echo File Missing: HBCD\Dos\MBRUtil.7z&pause>nul&exit
:a
7z.exe x -o"%TEMP%\HBCD" -y ..\Dos\MBRUtil.7z
:b
cd /d "%TEMP%\HBCD"
start "" "mbr.txt"
ren mbrw.exe mbr.exe
start "mbr.exe" /D"%TEMP%\HBCD" "cmd.exe" /k mbr.exe