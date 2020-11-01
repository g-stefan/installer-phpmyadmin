<?php
/*
// Public domain
// http://unlicense.org/
// Created by Grigore Stefan <g_stefan@yahoo.com>
*/

$config=file_get_contents("config.sample.inc.php");

//--

$search="\$cfg['blowfish_secret'] = ''; /* YOU MUST FILL IN THIS FOR COOKIE AUTH! */";
$replace="\$cfg['blowfish_secret'] = '".hash("sha256", date("Y-m-d h:i:s").mt_rand().rand(), false)."'; /* YOU MUST FILL IN THIS FOR COOKIE AUTH! */";
$config=str_replace ($search, $replace, $config);

$search="\$cfg['Servers'][\$i]['auth_type'] = 'cookie';";
$replace="\$cfg['Servers'][\$i]['auth_type'] = 'config';\r\n";
$replace.="\$cfg['Servers'][\$i]['user'] = 'root';\r\n";
$replace.="\$cfg['Servers'][\$i]['password'] = '';";
$config=str_replace ($search, $replace, $config);

$search="\$cfg['Servers'][\$i]['host'] = 'localhost';";
$replace="\$cfg['Servers'][\$i]['host'] = '127.0.0.1';";
$config=str_replace ($search, $replace, $config);

$search="\$cfg['Servers'][\$i]['AllowNoPassword'] = false;";
$search="\$cfg['Servers'][\$i]['AllowNoPassword'] = true;";
$config=str_replace ($search, $replace, $config);

//--

file_put_contents("config..inc.php",$config);
