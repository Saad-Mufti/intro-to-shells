#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi

n=$1
a=1
b=1

for ((i=1; i<n; i++))
do
    next=$((a + b))
    a=$b
    b=$next
    echo $next > fib_out
done
exit 0