#!/bin/bash
# Script to read pan.md and find all instances of 'Peter', 'Pan', and 'Peter Pan'
# Use grep and regex

FILE="pan.md"

if [[ ! -f "$FILE" ]]; then
  echo "File $FILE does not exist."
  exit 1
fi

echo "Instances of 'Peter':"
# Your code here

echo "Instances of 'Pan':"
# Your code here

echo "Instances of 'Peter Pan':"
# Your code here
