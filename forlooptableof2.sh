#!/bin/bash 

x=0
read -p "Enter a number: " n

for ((count=1;count<=n;count+=1))
do
((x=2*$count))
echo $x
echo -n
done

