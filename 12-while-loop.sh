#!/bin/bash

# Define an array (Bash arrays hold strings, not objects)
fruits=("apple" "banana" "orange")

# Initialize index counter (arrays in Bash are 0-based)
index=0

# ${#array[@]} → total number of elements in the array
length=${#fruits[@]}

# while condition:
# -lt means "less than"
# Loop runs while index < array length
while [ "$index" -lt "$length" ]
do
  # Access array element by index
  # ${fruits[$index]} → current element
  echo "I like ${fruits[$index]}"

  # Increment index
  # $(( )) is arithmetic expansion
  index=$((index + 1))
done
