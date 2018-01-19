@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD\PartitionWizard" -y Files\PartitionWizard.7z
@7z.exe x -o"%TEMP%\HBCD\PartitionWizard" -y Files\DLL.7z *90.*
@start "" /B /D"%TEMP%\HBCD\PartitionWizard" "PartitionWizard.exe"
@