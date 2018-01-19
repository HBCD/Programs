@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\PartitionRecovery.7z
@start "" /D"%TEMP%\HBCD" "PartitionRecovery.exe" 