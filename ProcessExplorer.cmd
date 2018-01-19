@pushd "%~dp0"
@REG ADD "HKCU\Software\Sysinternals\Process Explorer" /v EulaAccepted /t REG_DWORD /d 1 /f
@start "" "ProceXP.exe"