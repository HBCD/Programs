@setlocal enableextensions
@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD\SpybotSD" -y Files\SpybotSD.7z
@copy /y 7z.* "%TEMP%\HBCD\SpybotSD">nul
@start "" /D"%TEMP%\HBCD\SpybotSD" "StartSD.cmd" %~dp0