@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\WDDataLifeguardDiagnostic.7z
@start "" /D"%TEMP%\HBCD" "WinDlg.exe"