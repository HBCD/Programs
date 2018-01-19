@echo Force Restart&pause
@if "%COMPUTERNAME:~0,6%"=="MiniXP" start shutdown /i 2 /r&exit
@shutdown /f /r /t 0 /d u:0:0