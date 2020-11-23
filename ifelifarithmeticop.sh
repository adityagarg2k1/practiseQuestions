#!/bin/bash -x

x=0
y=0
z=0

read -p "Enter First Number: " a
read -p "Enter First Number: " b
read -p "Enter First Number: " c

w=$((a + b * c))
x=$((a % b + c))
y=$((c + a / b))
z=$((a * b + c))

if [[ $w -le $x ]] && [[ $w -le $y ]] && [[ $w -le $z ]] 
then
echo "Minimum number is =  $w"
elif [[ $x -le $w ]] && [[ $x -le $y ]] && [[ $x -le $z ]]
then
echo "Minimum number is =  $x"
elif [[ $y -le $w ]] && [[ $y -le $x ]] && [[ $y -le $z ]]
then
echo "Minimum number is = $y"
else
echo "Minimum number is = $z"
fi

if [[ $w -ge $x ]] && [[ $w -ge $y ]] && [[ $w -ge $z ]]
then
echo "Maximum number is =  $w"
elif [[ $x -ge $w ]] && [[ $x -ge $y ]] && [[ $x -ge $z ]]
then
echo "Maximum number is =  $x"
elif [[ $y -ge $w ]] && [[ $y -ge $x ]] && [[ $y -ge $z ]]
then
echo "Maximum number is = $y"
else
echo "Maximum number is = $z"

fi
