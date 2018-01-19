@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\RMPrepUSB.7z
@start "syslinux.exe" /D"%TEMP%\HBCD" "cmd.exe" /k syslinux.exe