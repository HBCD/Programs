@pushd "%~dp0"
@7z.exe e -y -o"%TEMP%\HBCD\ERUNT" ComboFix.exe *\er*nt*.*
@ren "%TEMP%\HBCD\ERUNT\ERUNT.*x*" ERUNT.exe
@start "" /D"%TEMP%\HBCD\ERUNT" "ERUNT.exe"