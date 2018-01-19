@pushd "%~dp0"
@attrib -s -h -r "%windir%\system32\drivers\etc\hosts"
@if exist "%windir%\system32\drivers\etc\hosts" start "" notepad.exe "%windir%\system32\drivers\etc\hosts"