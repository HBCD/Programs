@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD\PartitionFindAndMount" -y Files\PartitionFindAndMount.7z
@7z.exe x -o"%TEMP%\HBCD\PartitionFindAndMount" -y Files\DLL.7z *71*
@start "" /D"%TEMP%\HBCD\PartitionFindAndMount" "FindAndMount.exe"