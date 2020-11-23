#!/bin/bash

flag=0
x=0
read -p "Enter a number: " n

for ((count=2;count<=n/2;count+=1))
do
((x=$n%$count))
if [ $x -eq 0 ]
then
flag=1
fi
done

if [ $flag -eq  1 ]
then 
echo "$n is a not a prime "
else
echo "$n is a prime"
fi


