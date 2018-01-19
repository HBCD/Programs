@echo off
pushd "%~dp0"
if "%COMPUTERNAME:~0,6%"=="MiniXP" goto z
echo Sorry but this only works under Mini Windows Xp
pause>nul
exit
:z
7z.exe x -o"%WINDIR%" -y Files\Ext2fsd.7z
sc create ext2fsd type= kernel start= boot binpath= "system32\drivers\ext2fsd.sys">nul
sc start ext2fsd>nul
start Ext2Mgr.exe