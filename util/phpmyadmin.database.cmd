@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

pushd "C:\Program Files\MariaDB\bin"
mysql.exe -u root < "C:\ProgramData\HTTPD\www\phpmyadmin\sql\create_tables.sql"
popd
