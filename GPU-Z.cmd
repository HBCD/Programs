@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\GPU-Z.7z
@REG ADD HKCU\Software\techPowerUp\GPU-Z /v Interval /t REG_DWORD /d 3 /f
@start "" /D"%TEMP%\HBCD" "GPU-Z.exe"