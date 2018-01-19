@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD\PcDecrapifier" -y Files\PcDecrapifier.7z
@7z.exe x -o"%TEMP%\HBCD\PcDecrapifier" -y Files\DLL.7z *90*
@start "" /D"%TEMP%\HBCD\PcDecrapifier" "pc-decrapifier.exe"