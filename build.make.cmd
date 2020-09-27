@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

echo -^> make phpmyadmin

if exist build\ rmdir /Q /S build
if exist release\ rmdir /Q /S release

mkdir build

7z x "vendor/phpMyAdmin-5.0.2-all-languages.zip" -aoa -obuild
move /Y "build\phpMyAdmin-5.0.2-all-languages" "release"

copy /B /Y util\config.inc.php release\config.inc.php
