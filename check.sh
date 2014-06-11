#!/usr/bin/env php
<?php

//----------
function usage()
{
	$script = basename(__FILE__);
	echo <<<EOT

${script}  
    Checks for the necessary dependencies on your system.

    It's up to you to get them installed.

Usage:
    ./${script}


EOT;

	exit(0);
}
if (isset($argv[1]) && $argv[1] == '-h') {
	usage();
}


//----------
// main()
$apps = array(
	'php' => '5.4',
	'phpunit' => '3.7',
	'ruby' => '2',
	'grunt' => '0.1',
	'node' => '0.10',
	'npm' => '1.4',
);

foreach ($apps as $executable => $versionNumber) {
	if ($path = which($executable)) {
		$fullVersion = getFullVersion($executable);
		echo "## Found {$executable} at `{$path}`." . PHP_EOL;
		if ($shortVersion = extractVersionNumber($fullVersion)) {
			if(version_compare($shortVersion, $versionNumber, '>=')) {
				echo "\tYour version `{$shortVersion}` is greater than the required version `{$versionNumber}`." . PHP_EOL;
			} else {
				echo "!!\tYour version `{$shortVersion}` DOES NOT meet the required version `{$versionNumber}`!" . PHP_EOL;
			}
		} else {
			echo "\tRequired version is: {$versionNumber}. You have version: {$fullVersion}." . PHP_EOL;
		}
	} else {
		echo "!! {$executable} not found! Version required is `{$version}`." . PHP_EOL;
	}
}


//----------
function which($executable) {
	$output = array();
	$exitcode = 0;
	$lastline = exec("which {$executable}", $output, $exitcode);
	if ($exitcode == 0) {
		return trim($lastline);
	} else {
		return false;
	}
}

//----------
function getFullVersion($executable) {
	$version = array();
	exec("$executable --version", $version);
	return trim(implode(PHP_EOL . "\t", $version));
}

//----------
function extractVersionNumber($fullVersion) {
	// Ref: https://github.com/mojombo/semver/issues/32
	$pattern = '/((\d+)\.(\d+)\.(\d+))(?:-([\dA-Za-z\-]+(?:\.[\dA-Za-z\-]+)*))?(?:\+([\dA-Za-z\-]+(?:\.[\dA-Za-z\-]+)*))?/';
	$matches = array();
	if (preg_match($pattern, $fullVersion, $matches)) {
		return $matches[1];
	} else {
		return false;
	}
}