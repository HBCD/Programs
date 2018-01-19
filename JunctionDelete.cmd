@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Sysinternals.7z Junction.*
@start "Junction.exe" /D"%TEMP%\HBCD" "cmd.exe" /K junction.exe
@start "" /D"%TEMP%\HBCD" "Junction.txt"