@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD\WinNTSetup000" -y Files\WinNTSetup.7z
@start "" /D"%TEMP%\HBCD\WinNTSetup000" "WinNTSetup.exe"