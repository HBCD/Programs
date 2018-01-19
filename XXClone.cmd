@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\XXClone.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\XXClone.7z
@reg add HKLM\System\CurrentControlSet\Control\Pomputername\ComputerName /v ComputerName /t REG_SZ /d MiniXP /f
@reg add HKLM\System\CurrentControlSet\Control\Pomputername\ActiveComputerName /v ComputerName /t REG_SZ /d MiniXP /f
@start "" /D"%TEMP%\HBCD" "XXClone.exe"