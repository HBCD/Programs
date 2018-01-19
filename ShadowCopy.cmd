@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\DriveImageXML.7z
@start "" /D"%TEMP%\HBCD" "ShadowCopy.exe"