#! /bin/bash

read -p "Enter first number:" a
read -p "Enter first number:" b
read -p "Enter first number:" c

declare  -A arithmeticsorting
arithmeticsorting[0]=$(($a+$b*$c))
arithmeticsorting[1]=$(($a*$b+$c))
arithmeticsorting[2]=$(($c+$a/$b))
arithmeticsorting[3]=$(($a%$b+$c))

for key in ${!arithmeticsorting[@]}
do
echo "Value $key is ${arithmeticsorting[$key]}"
done

i=0
arrvar=()

while [ $i -le 3 ]
do
arrvar+=("${arithmeticsorting[$i]}")
#echo "${arrvar[i]}"
((i++))
done

for ((i = 0; i<4; i++))
do

    for((j = 0; j<4-i-1; j++))
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
echo "Array in ascending order:" ${arrvar[@]}

for ((i = 0; i<4; i++))
do

    for((j = 0; j<4-i-1; j++))
    do

        if [ ${arrvar[j]} -lt ${arrvar[$((j+1))]} ]
        then
            # swap
            temp=${arrvar[j]}
            arrvar[$j]=${arrvar[$((j+1))]}
            arrvar[$((j+1))]=$temp
        fi
    done
done
echo "Array in descending order:" ${arrvar[@]}
