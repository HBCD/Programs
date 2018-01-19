@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\SmartDriverBackup.7z
@title Waiting...
@echo Waiting for SmartDriverBackup to exit (to unload registry)
@start "" /WAIT /D"%TEMP%\HBCD" "SmartDriverBackup.exe"
@reg unload hklm\x_software
@reg unload hklm\x_system