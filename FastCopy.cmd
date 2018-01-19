@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\FastCopy.7z
@if "%COMPUTERNAME:~0,6%"=="MiniXP" copy /Y "%windir%\system32\msvcrt.dll" "%TEMP%\HBCD\msvcrt40.dll"
@start "" /D"%TEMP%\HBCD" "FastCopy.exe"