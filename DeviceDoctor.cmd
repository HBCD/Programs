@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD\DeviceDoctor" -y Files\DeviceDoctor.7z
@start "" /Min /D"%TEMP%\HBCD\DeviceDoctor" "StartDevDr.cmd"