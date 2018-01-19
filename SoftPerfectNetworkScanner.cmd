@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\SoftPerfectNetworkScanner.7z
@start "" /D"%TEMP%\HBCD" "netscan.exe"