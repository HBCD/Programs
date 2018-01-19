@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD\PCWizard" -y Files\pcwizard.7z
@start "" /D"%TEMP%\HBCD\PCWizard" "PC Wizard.exe"