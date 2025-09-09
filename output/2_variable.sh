#!/bin/sh

# Author: zsavery
# Purpose: Denitrate how to use variables in shell scripting

echo "Hello World!"

# Assigning a value to a variable
name="zsavery" # no spaces around the equal sign

# Accessing the value of a variable
echo "My name is $name" # using $ to access variable value

age=99

age=$(($age+1))

echo "My age is $age"