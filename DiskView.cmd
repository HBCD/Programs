@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Sysinternals.7z DiskView.exe
@REG ADD HKCU\Software\Sysinternals\DiskView /v EulaAccepted /t REG_DWORD /d 1 /f
@start "" /D"%TEMP%\HBCD" "DiskView.exe"