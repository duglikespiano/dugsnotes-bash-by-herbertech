#!/bin/bash
# awk doesn’t stand for a technical phrase.
# It’s named after the last names of its creators:

# Aho — Alfred Aho
# Weinberger — Peter Weinberger
# Kernighan — Brian Kernighan

# Run awk on data.txt
awk '{ print $1, $3 }' 16-data.txt