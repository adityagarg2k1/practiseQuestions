#!/bin/bash
arr=()

for ((i=10; i<101; i++))
do

num=$i
s=0
rev=""
temp=$num

while [ $num -gt 0 ]
do
    s=$(( $num % 10 ))
    num=$(( $num / 10 ))
    rev=$( echo ${rev}${s} )
done

if [ $temp -eq $rev ]
then
    arr+=("$temp")
fi
done

    echo "${arr[@]}"
