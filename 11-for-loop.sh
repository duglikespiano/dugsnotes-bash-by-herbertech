#!/bin/bash

# Syntax	Behavior
# "${array[@]}"	✅ Each element as a separate item (best practice)
# "${array[*]}"	❌ All elements as ONE string
# ${array[@]}	⚠️ Word-splitting happens
# ${array[*]}	⚠️ Word-splitting happens

fruits=("apple" "banana" "orange")

for fruit in "${fruits[@]}"
do
  echo "I like $fruit"
done
