@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\USBGrub.7z grub*
@start "" /D"%TEMP%\HBCD" "grubinst_gui.exe"