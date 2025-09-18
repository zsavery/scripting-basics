# !/bin/bash
# Author: Victor

# Create a script that defines a function takes an argument and prints "Hello, <argument>!"

name=$1


hello () {
echo "$1"
}

# declare variable name taking an argument from command line

# call the function with the variable name as an parameter

hello $1