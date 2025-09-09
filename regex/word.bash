# !/bin/bash
# author - Zyon Savery

num=$(cat lyrics.txt | grep "$1" -c)
echo "Number of times $1 appears: $num"
echo "Location(s) where $1 appears: "
cat lyrics.txt | grep "$1" -n
