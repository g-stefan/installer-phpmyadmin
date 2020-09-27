@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

echo -^> installer phpmyadmin

if exist installer\ rmdir /Q /S installer
mkdir installer

if exist build\ rmdir /Q /S build
mkdir build

makensis.exe /NOCD "util\phpmyadmin-installer.nsi"

call grigore-stefan.sign "phpMyAdmin" "installer\phpmyadmin-5.0.2-installer.exe"

if exist build\ rmdir /Q /S build
