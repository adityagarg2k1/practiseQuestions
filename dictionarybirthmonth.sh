#! /bin/bash

declare  -A birthmonth
count=0
while [ $count -lt 50 ]
do
i=$((RANDOM%12 + 1))
((birthmonth[$i]+=1))
((count++))
done

for key in ${!birthmonth[@]}
do
echo "Month $key has ${birthmonth[$key]} birthdays"
done
