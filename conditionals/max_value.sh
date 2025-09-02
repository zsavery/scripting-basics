#!/bin/sh

a=10
b=23

if [ $a -ge $b ]
then
    echo "$a >= $b"
else
    echo "$a >= $b"
fi

c=23 

if [ $a -eq $b ]
then
    echo "$a == $b"
elif [ $c -eq $b ]
then
    echo "$c == $b"
fi
