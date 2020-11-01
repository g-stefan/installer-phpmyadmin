@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

setlocal ENABLEEXTENSIONS

for /f "tokens=2*" %%a in ('reg.exe query "HKLM\Software\phpMyAdmin" /v InstallPath /reg:64 2^>^&1^|find "REG_"') do set PHPMYADMIN_INSTALL_DIR=%%b
for /f "tokens=2*" %%a in ('reg.exe query "HKLM\Software\PHP" /v InstallPath /reg:64 2^>^&1^|find "REG_"') do set PHP_DIR=%%b

pushd "%ProgramData%\HTTPD\www\phpmyadmin"
"%PHP_DIR%\php.exe" "%PHPMYADMIN_INSTALL_DIR%\installer.config.inc.php"
popd
