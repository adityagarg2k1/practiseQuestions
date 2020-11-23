#!/bin/bash 
i=0
arrvar=()

while [ $i -le 9 ]
do
let "x=$(( RANDOM % (999 - 100 + 1 ) + 100 ))"
arrvar+=("$x")
echo "${arrvar[@]}"
((i++))
done



for ((i = 0; i<10; i++)) 
do
      
    for((j = 0; j<10-i-1; j++)) 
    do
      
        if [ ${arrvar[j]} -gt ${arrvar[$((j+1))]} ] 
        then
            # swap 
            temp=${arrvar[j]} 
            arrvar[$j]=${arrvar[$((j+1))]}   
            arrvar[$((j+1))]=$temp 
        fi
    done
done
  
echo "Array in sorted order :"
echo ${arrvar[*]} 
echo "secondSmallest = ${arrvar[0+1]}"
echo "secondGreatest = ${arrvar[i-2]}"
