@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\6\TeamViewer.exe" 7z.exe e -o"%TEMP%\HBCD\6" -y Files\TeamViewer.7z 6\*
@start "" /D"%TEMP%\HBCD\6" "TeamViewer.exe"