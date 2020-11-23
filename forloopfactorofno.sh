#!/bin/bash 

read -p "Enter a number to find prime factors: " n

for ((count=2;count*count<=$n;count++))
do
flag=0
for ((x=2;x<count;x++))
do
check=$((count%x))
if [ $check -eq 0 ]
then
flag=1
break
fi
done

if [ $flag -eq 0 ]
then 
check2=$(($n%count))
if [ $check2 -eq 0 ]
then 
echo "$count"
fi
fi
done



