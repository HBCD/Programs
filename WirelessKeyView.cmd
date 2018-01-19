@pushd "%~dp0"
@if exist %systemroot%\sysnative\cmd.exe set runsix="%SYSTEMROOT%\sysnative\cmd.exe" /C &set hb64=64
@7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd WirelessKeyView*
@start "" %runsix% /D"%TEMP%\HBCD" "WirelessKeyView%hb64%.exe"