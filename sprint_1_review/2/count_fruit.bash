# !/bin/bash
# Author:

fruits=("apple" "banana" "orange" "apple" "kiwi" "banana" "apple")

# display the contents of the fruits list
for i in "${fruits[@]}"; do
    echo "$i"
done
# alter the fruit in position 3 to 'grape'

fruits[3]="peach"

# Add two new fruits to the end of the list

fruits[8]="pineapple"
fruits[9]="strawberry"
fruits+=("raspberry" "blackberry")
# display the new contents of the fruits list

for i in "${fruits[@]}"; do
    echo "$i"
done