# !/bin/bash

# Create a script that read the contents of pan.md and displays it to the terminal
# Use cat command

FILE="pan.md"

if [[ ! -f "$FILE" ]]; then
    echo "File not found."
fi
cat pan.md
# Your code here
