#!/bin/bash 

flag=0
x=0
read -p "Enter a range of number (m) : " m
read -p "Enter a range of number (to n) : " n

echo "Prime numbers in given range are: "

for ((count=$m;count<=$n;count+=1))
do
flag=0
for ((counter=2;counter<=$count/2;counter+=1))
do
((x=$count%$counter))
if [ $x -eq 0 ]
then
flag=1
break
fi
done

if [ $flag -eq  0 ]
then
echo $count 
fi
done
