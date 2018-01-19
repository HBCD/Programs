@echo off
pushd "%~dp0"
title Macrium Reflect
if "%COMPUTERNAME:~0,6%"=="MiniXP" goto z
echo Sorry but this only works from Mini Windows Xp&pause
:z
7z.exe x -o"%TEMP%\HBCD" -y Files\MacriumReflect.7z
start "" /D"%TEMP%\HBCD" "ReflectPE.exe"