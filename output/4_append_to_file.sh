#!/bin/sh

# Author: zsavery
# Purpose: Denitrate how to redirect output to the end of a file

echo "Hello World!" >> output_2.txt # '>>' redirects output to a file, overwriting existing content
cat output_2.txt # Display the content of the file
echo "Append new line to the file content" >> output_2.txt # Overwrites the file content
cat output_2.txt # Display the updated content of the file