#!/bin/bash
# Script to find bash-related files in /usr/bin
# Piping takes the output of one command and feeds it as input to another command, allowing you to chain commands together.

ls -l /usr/bin | grep bash
