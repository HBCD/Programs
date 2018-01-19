@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\SearchMyFiles.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd SearchMyFiles.*
@start "" /D"%TEMP%\HBCD" "SearchMyFiles.exe"