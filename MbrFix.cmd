@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z MbrFix.*
@cd /d "%TEMP%\HBCD"
@start "" /D"%TEMP%\HBCD" /MIN "MbrFix.txt"
@start "MbrFix.exe" /D"%TEMP%\HBCD" "cmd.exe" /k "MbrFix.exe"