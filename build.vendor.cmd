@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

if not exist vendor\ mkdir vendor

set VENDOR=phpMyAdmin-5.0.2-all-languages.zip
set WEB_LINK=https://files.phpmyadmin.net/phpMyAdmin/5.0.2/%VENDOR%
if not exist vendor\%VENDOR% curl --insecure --location %WEB_LINK% --output vendor\%VENDOR%

