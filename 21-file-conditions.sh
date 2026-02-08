#!/bin/bash

# file reference from
# https://gist.github.com/bradtraversy/ac3b1136fc7d739a788ad1e42a78b610
# https://youtu.be/v-F3YLd6oMw?si=sqXes7x0P4nHQVID

########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

FILE="16-data.txt"
if [ -e "$FILE" ]
then 
  echo "$FILE exists"
else
  echo "$FILE does not exist"
fi

if [ -f "$FILE" ]
then 
  echo "$FILE is a file"
else
  echo "$FILE is not a file"
fi