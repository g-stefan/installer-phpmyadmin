// Created by Grigore Stefan <g_stefan@yahoo.com>
// Public domain (Unlicense) <http://unlicense.org>
// SPDX-FileCopyrightText: 2022 Grigore Stefan <g_stefan@yahoo.com>
// SPDX-License-Identifier: Unlicense

Fabricare.include("vendor");

// ---

messageAction("make");

if (Shell.fileExists("temp/build.done.flag")) {
	return;
};

Shell.removeDirRecursivelyForce("output");
Shell.removeDirRecursivelyForce("temp");

Shell.mkdirRecursivelyIfNotExists("temp");

Shell.system("7z x \"vendor/phpMyAdmin-"+Project.version+"-all-languages.zip\" -aoa -otemp");
Shell.rename("temp/phpMyAdmin-"+Project.version+"-all-languages","output");

Shell.filePutContents("temp/build.done.flag", "done");
