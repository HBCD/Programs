@echo Force Shutdown&pause
@if "%COMPUTERNAME:~0,6%"=="MiniXP" start shutdown /i 2 /p&exit
@shutdown /f /s /t 0 /d u:0:0