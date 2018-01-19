@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\TeraCopy.7z
@echo.>"%TEMP%\HBCD\Portable"
@start "" /D"%TEMP%\HBCD" "TeraCopy.exe"