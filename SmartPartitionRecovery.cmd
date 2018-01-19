@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\SmartPartitionRecovery.7z
@reg add "HKCU\Software\Smart PC Solutions\Smart Partition Recovery" /ve /t REG_DWORD /d 0 /f
@start "" /D"%TEMP%\HBCD" "SmartPartitionRecovery.exe"