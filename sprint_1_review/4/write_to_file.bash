# !/bin/bash

# Create a script that creates a file called 'output.txt'
# use a loop that exits after the user inputs 'exit'

OUTPUT_FILE="output.txt"
user_input=""
if [ -e output.txt ]; 
then
    rm $OUTPUT_FILE
fi


touch output.txt

while [ "$user_input" != "exit" ]; do  
    read -p "Type something: " user_input
    if [ "$user_input" != "exit" ]; 
    then 
        echo $user_input >> $OUTPUT_FILE
    fi
done