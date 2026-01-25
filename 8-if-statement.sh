#!/bin/bash
# This script may not run properly based on Bash's version

arg=$(echo "$1" | tr '[:upper:]' '[:lower:]')

if [ "$arg" = "dug" ]; then
	echo "Hi dug! welcome!"
elif [ "$arg" = "help" ]; then
	echo "Help me!"
else
	echo "Squirrel!!!!!"
fi
