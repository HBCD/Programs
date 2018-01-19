@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\HashMyFiles.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd HashMyFiles.*
@start "" /D"%TEMP%\HBCD" "HashMyFiles.exe" /file %*
@exit