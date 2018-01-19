@pushd "%~dp0"
@7z.exe e -o"%TEMP%\HBCD" -y Files\WinNTSetup.7z B*.exe
@for %%x in (NT6xFastInstaller GImageX) do 7z.exe x -o"%TEMP%\HBCD" -y Files\%%x.7z
@start "" /D"%TEMP%\HBCD" "installer.cmd"