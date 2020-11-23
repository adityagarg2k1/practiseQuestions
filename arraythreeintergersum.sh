#!/bin/bash 
read -p "Enter 3 values in array, seperated by space:" array
tot=0
for i in ${array[@]}; do
  let tot+=$i
done
if [ $tot = 0 ]
then
echo "Total of 3 intergers is ZERO: $tot"
else
echo "Total of 3 intergers is not ZERO: $tot"
fi
