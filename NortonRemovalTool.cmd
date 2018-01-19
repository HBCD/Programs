@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\NortonRemovalTool.7z
@REG DELETE "HKLM\SOFTWARE\SymNRT" /f
@start "" /D"%TEMP%\HBCD" "Norton_Removal_Tool.exe"