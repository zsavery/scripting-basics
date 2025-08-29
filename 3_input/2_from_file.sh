#!/bin/sh
counter=1

while IFS= read -r line; do
    echo "Line $counter: $line"
    counter=$((counter +1))
done < input.txt # `<` redirects input from a file