#!/bin/sh

count=0

while [ $count -le 10 ]; do
    echo "Loop count: $count"
    count=$((count + 2))
done

# -le - less than or equal
# -lt  - less than
# -ge  - greater than or equal
# -gt  - greater than
# -eq  - equal
# -ne  - not equal
# &&   - and
# ||   - or