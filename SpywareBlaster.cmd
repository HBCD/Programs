@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD\SpywareBlaster" -y Files\SpywareBlaster.7z
@REG ADD HKLM\SOFTWARE\SpywareBlaster\Settings /v TutShown /t REG_BINARY /d ffff /f >nul
@start "" /D"%TEMP%\HBCD\SpywareBlaster" "spywareblaster.exe"