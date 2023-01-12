@echo off
rem Created by Grigore Stefan <g_stefan@yahoo.com>
rem Public domain (Unlicense) <http://unlicense.org>
rem SPDX-FileCopyrightText: 2020-2023 Grigore Stefan <g_stefan@yahoo.com>
rem SPDX-License-Identifier: Unlicense

pushd "C:\Program Files\MariaDB\bin"
mysql.exe -u root < "C:\ProgramData\HTTPD\www\phpmyadmin\sql\create_tables.sql"
popd
