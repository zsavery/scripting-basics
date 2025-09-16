# !/bin/bash
# Author: 

# Create a script that counts the number of coins in a file called coins.txt.
# Each line in the file contains a type of coin and its value, e.g.:
# quarter, dime, nickel, penny

coins () {
    echo -n "$2: " 
    cat $1 | grep $2 | wc -l
}



FILE="coins.txt"

coins $FILE "dime"
coins $FILE "penny"
coins $FILE "quarter"
coins $FILE "nickel"