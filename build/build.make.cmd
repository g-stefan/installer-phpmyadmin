@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

call build\build.config.cmd

echo -^> make %PRODUCT_NAME%

if exist temp\ rmdir /Q /S temp
if exist output\ rmdir /Q /S output

mkdir temp

7z x "vendor/phpMyAdmin-%PRODUCT_VERSION%-all-languages.zip" -aoa -otemp
move /Y "temp\phpMyAdmin-%PRODUCT_VERSION%-all-languages" "output"
