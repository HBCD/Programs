@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\LicenseCrawler.7z
@start "" /D"%TEMP%\HBCD" "LicenseCrawler.exe"