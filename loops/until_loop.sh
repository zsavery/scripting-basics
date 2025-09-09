#!/bin/sh

numA=50
numB=77

until [ $numA -ge $numB ]; do
    echo "numA: $numA, numB: $numB"
    numA=$((numA + 2))
    numB=$((numB - 1))
done

echo "\nFinal\nnumA: $numA, numB: $numB"