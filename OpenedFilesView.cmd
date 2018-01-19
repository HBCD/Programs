@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd OpenedFilesView.*
@start "" /D"%TEMP%\HBCD" "OpenedFilesView.exe"