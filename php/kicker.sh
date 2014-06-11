#!/usr/bin/env bash
# Runs a phpunit file watcher.
KICKER=$( which kicker )
if [ $? -gt 0 ]; then
	KICKER=$( bundle show kicker )
	if [ $? -gt 0 ]; then
		echo "!! Unable to locate the 'kicker' executable."
		exit 1
	fi
fi

$KICKER -e "./vendor/bin/phpunit" ./lib/ ./test/
