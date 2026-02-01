#!/usr/bin/env bash
# This script may not run properly based on Bash's version

showname() {
  echo "hello $1"

  lower=$(echo "$1" | tr '[:upper:]' '[:lower:]')

  if [ "$lower" = "dug" ]; then
    return 0
  else
    return 1
  fi
}

showname "$1"

if [ $? -ne 0 ]; then
  echo "Someone unknown called the function!"
fi
