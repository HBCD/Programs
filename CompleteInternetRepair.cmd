@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\CompleteInternetRepair.7z
@start "" /D"%TEMP%\HBCD" "CIntRep.exe"