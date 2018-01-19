@pushd "%~dp0"
@echo Hold Ctrl to select text
@if not exist "%TEMP%\HBCD\SumatraPDF.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\SumatraPDF.7z
@start "" /D"%TEMP%\HBCD" /MAX "SumatraPDF.exe" %*
@exit