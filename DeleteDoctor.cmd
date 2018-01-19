@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z deletedr.exe
@start "" /D"%TEMP%\HBCD" "deletedr.exe"
@cls&echo Hint:&echo You can also use DiskGenius (from partition tools) to delete invalid files&pause>nul