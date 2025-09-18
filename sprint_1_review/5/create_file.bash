# !/bin/bash

# Create a script that creates a file, a variable that stores text to be input 
# into the file, and then writes the text to the file.

touch text.txt
user_input=""
read -p "Type something: " user_input ; echo $user_input >> text.txt