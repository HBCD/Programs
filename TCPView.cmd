@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\Tcpview.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\Sysinternals.7z Tcpview.exe
@REG ADD HKCU\Software\Sysinternals\TCPView /v EulaAccepted /t REG_DWORD /d 1 /f
@start "" /D"%TEMP%\HBCD" "Tcpview.exe" /accepteula