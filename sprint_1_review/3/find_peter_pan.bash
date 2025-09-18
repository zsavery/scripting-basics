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
cat $FILE | grep "Peter" | wc -l
echo "Instances of 'Pan':"
# Your code here
cat $FILE | grep "Pan" | wc -l
echo "Instances of 'Peter Pan':"
# Your code here
cat $FILE | grep "Peter Pan" | wc -l