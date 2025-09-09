#!/bin/sh

# Author: zsavery
# Purpose: Denitrate how to redirect output to a file

echo "Hello World!" > output_1.txt # '>' redirects output to a file, overwriting existing content
cat output_1.txt # Display the content of the file
echo "Overwriting the file content" > output_1.txt # Overwrites the file content
cat output_1.txt # Display the updated content of the file