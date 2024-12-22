#!/usr/bin/env bash

# (()) replace existing value after calculate
a=3
((a+=1))
echo $a

# $(()) return calculate value
echo $((1+2))

# calculate with non interger
declare -i a=1
declare -i b=3
c=$(echo "scale=3; $a%$b" | bc)
echo $c

# calculate with random number '10' is the range of random number
echo $(( 1 + RANDOM % 10))
