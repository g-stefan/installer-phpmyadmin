@echo off
rem Created by Grigore Stefan <g_stefan@yahoo.com>
rem Public domain (Unlicense) <http://unlicense.org>
rem SPDX-FileCopyrightText: 2020-2024 Grigore Stefan <g_stefan@yahoo.com>
rem SPDX-License-Identifier: Unlicense

setlocal ENABLEEXTENSIONS

for /f "tokens=2*" %%a in ('reg.exe query "HKLM\Software\phpMyAdmin" /v InstallPath /reg:64 2^>^&1^|find "REG_"') do set PHPMYADMIN_INSTALL_DIR=%%b
for /f "tokens=2*" %%a in ('reg.exe query "HKLM\Software\Hypertext-Preprocessor" /v InstallPath /reg:64 2^>^&1^|find "REG_"') do set PHP_DIR=%%b

pushd "%ProgramData%\HTTPD\www\phpmyadmin"
"%PHP_DIR%\php.exe" "%PHPMYADMIN_INSTALL_DIR%\installer.config.inc.php"
popd
