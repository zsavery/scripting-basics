#!/bin/sh

echo "loop from 1 to 5\n"
for i in 1 2 3 4 5; do 
    echo "Loop $i"
done

echo "\nloop from 10 to 20\n"
for i in {10..20}; do 
    echo "Loop $i"
done

echo "\nloop with names\n"

for name in "Bobby" "Hank" "Peggy"; do 
    echo "Loop $name"
done

echo "\nloop from array\n"

cities="Austin Dallas Houston San Antonio"
for city in $cities; do
    echo "City: $city"
done

