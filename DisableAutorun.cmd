@echo off
pushd "%~dp0"
Set _reg="HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\IniFileMapping\Autorun.inf"
REG QUERY %_reg%>NUL
if errorlevel 1 goto d
echo *** UNDO ***
echo Enable USB Autorun
echo.
echo Press any key to confirm (or close this window to cancel)
pause>nul
REG DELETE %_reg% /f
goto x
:d
cls
echo Disable USB Autorun to Save PC from USB Viruses
echo.
echo Press any key to confirm (or close this window to cancel)
pause>nul
REG ADD %_reg% /ve /d "@SYS:DoesNotExist" /f
:x
echo.
echo Press any key to EXIT
pause>nul