#!/bin/bash

FILES=$(ls 24-*.txt)
NEW="new"

for FILE in $FILES
  do
    echo "Renaming $FILE to new-$FILE"
    mv $FILE $NEW-$FILE
done