@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Sysinternals.7z RootkitRevealer.exe
@REG ADD HKCU\Software\Sysinternals\RootkitRevealer /v EulaAccepted /t REG_DWORD /d 1 /f
@start "" /D"%TEMP%\HBCD" "RootkitRevealer.exe"