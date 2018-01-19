@echo off
pushd "%~dp0"
if exist "%TEMP%\HBCD\WinMerge\WinMergeU.exe" goto a
7z.exe x -o"%TEMP%\HBCD\WinMerge" -y Files\WinMerge.7z
7z.exe x -o"%TEMP%\HBCD\WinMerge" -y Files\DLL.7z *71*
REG ADD "HKCU\Software\Thingamahoochie\WinMerge\Settings" /v DisableSplash /t REG_DWORD /d 1 /f
REG ADD "HKCU\Software\Thingamahoochie\WinMerge\Settings" /v ShowFileDialog /t REG_DWORD /d 1 /f
:a
start "" /D"%TEMP%\HBCD\WinMerge" "WinMergeU.exe"