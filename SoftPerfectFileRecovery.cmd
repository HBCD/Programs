@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\SoftPerfectFileRecovery.7z
@start "" /D"%TEMP%\HBCD" "file_recovery.exe"