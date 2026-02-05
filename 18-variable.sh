#!/bin/bash

# ECHO COMMAND
echo Hello world!

# VARIABLES
# Uppercase by convention
# Letters, numbers, underscores
# Can be called in both $VARIABLE and ${VARIABLE}
NAME="Dug"
echo "My name is $NAME"
echo "My name is ${NAME}"

# USER INPUT
read -p "Enter your name: " USERNAME
echo "Hello $USERNAME, nice to meet you!"