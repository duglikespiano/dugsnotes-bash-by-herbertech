#!/bin/bash

COUNT=3

if (( $COUNT > 10 ))
then 
  echo "the number is bigger than 10"
elif (( $COUNT > 1 ))
then
  echo "the number is bigger than 1"
else
  echo "the condition is false"
fi