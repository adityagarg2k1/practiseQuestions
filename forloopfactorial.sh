#!/bin/bash

fact=1
read -p "Enter a number: " n

for ((count=1;count<=n;count+=1))
do
((fact=$fact*$count))
done
echo "$fact"













