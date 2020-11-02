@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

call build.config.cmd

echo -^> vendor %PRODUCT_NAME%

if not exist vendor\ mkdir vendor

set VENDOR=phpMyAdmin-%PRODUCT_VERSION%-all-languages.zip
set WEB_LINK=https://files.phpmyadmin.net/phpMyAdmin/%PRODUCT_VERSION%/%VENDOR%
if not exist vendor\%VENDOR% curl --insecure --location %WEB_LINK% --output vendor\%VENDOR%

