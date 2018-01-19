@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Sysinternals.7z ProcMon.exe
@REG ADD "HKCU\Software\Sysinternals\Process Monitor" /v Logfile /d "%TEMP%\HBCD\ProcMon.pml" /f
@start "" /D"%TEMP%\HBCD" "ProcMon.exe" /accepteula