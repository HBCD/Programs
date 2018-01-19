@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Sysinternals.7z FileMon.exe
@REG ADD HKCU\Software\Sysinternals\FileMon /v EulaAccepted /t REG_DWORD /d 1 /f
@start "" /D"%TEMP%\HBCD" "FileMon.exe"