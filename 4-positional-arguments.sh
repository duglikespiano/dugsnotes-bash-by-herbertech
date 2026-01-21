#!/bin/bash
echo Hello $1 $2!

# ./4-positional-arguments.sh dug park
# result -> Hello dug park!

# n Bash scripting, positional arguments are values passed to a script when it is executed, stored in special variables named $0, $1, $2, and so on, based on their order. They are a fundamental way to provide dynamic input to a script. 
# Accessing Positional Arguments
# $0: The name of the script itself.
# $1, $2, ... $9: The first, second, and subsequent arguments provided on the command line.
# ${10}, ${11}, ...: For arguments ten and greater, curly braces are required.
# $#: The total number of arguments passed to the script.
# $@: Represents all positional arguments as a list of individually quoted strings. This is useful when iterating over arguments (e.g., for arg in "$@"; do ...; done).
# $*: Represents all arguments as a single string. 