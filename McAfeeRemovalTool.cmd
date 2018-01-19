@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\McAfeeRemovalTool.7z
@start "" /D"%TEMP%\HBCD" "MCPR.exe"