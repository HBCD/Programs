@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\DependencyWalker.7z
@start "" /D"%TEMP%\HBCD" "depends.exe"