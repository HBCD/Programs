@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\usb_format.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\USBGrub.7z usb_format.exe
@start "" /D"%TEMP%\HBCD" "usb_format.exe"