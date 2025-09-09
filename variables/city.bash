#!/bin/bash

cities=("Houston" "Austin" "Dallas" "San Antonio")

for city in "${cities[@]}"; do
    echo "$city"
done

echo "Total cities: ${#cities[@]}"
echo ""

city="Katy"
echo "New city $city"
cities+=($city)

for city in "${cities[@]}"; do
    echo "$city"
done

echo "Total cities: ${#cities[@]}"
echo ""
echo "${cities}"