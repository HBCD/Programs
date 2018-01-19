@pushd "%~dp0"
@echo Disable Compress Old Files (This is useful when XP Disk Cleanup Tool Stops Responding While Compressing Old Files)
@echo.
@REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Compress old files"
@echo Press any key to EXIT
@pause>nul