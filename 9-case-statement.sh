#!/bin/bash
# This script may not run properly based on Bash's version

arg=$(echo "$1" | tr '[:upper:]' '[:lower:]')

case "$arg" in
dug)
	echo "Hi dug! welcome!"
	;;
help)
	echo "Help me!"
	;;
*)
	echo "Squirrel!!!!!"
	;;
esac
