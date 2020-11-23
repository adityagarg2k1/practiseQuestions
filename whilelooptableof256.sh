#!/bin/bash

i=1
read -p "Enter a number: " n

while  [ $i -le 256 ] && [ $i -le $n ]
#for ((count=1;count<=n;count+=1))
do
((x=2*$i))
echo $i"   "$x
echo -n
((i++))
done
