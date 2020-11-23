#!/bin/bash -x

die1=0
die2=0
die3=0
die4=0
die5=0

let "die1=$(( RANDOM % (999 - 100 + 1 ) + 100 ))"
let "die2=$(( RANDOM % (999 - 100 + 1 ) + 100 ))"
let "die3=$(( RANDOM % (999 - 100 + 1 ) + 100 ))"
let "die4=$(( RANDOM % (999 - 100 + 1 ) + 100 ))"
let "die5=$(( RANDOM % (999 - 100 + 1 ) + 100 ))"

if [[ $die1 -le $die2 ]] && [[ $die1 -le $die3 ]] && [[ $die1 -le $die4 ]] && [[ $die1 -le $die5 ]]
then
echo "Minimum number is =  $die1"
elif [[ $die2 -le $die1 ]] && [[ $die2 -le $die3 ]] && [[ $die2 -le $die4 ]] && [[ $die2 -le $die5 ]]
then
echo "Minimum number is =  $die2"
elif [[ $die3 -le $die1 ]] && [[ $die3 -le $die2 ]] && [[ $die3 -le $die4 ]] && [[ $die3 -le $die5 ]]
then
echo "Minimum number is = $die3"
elif [[ $die4 -le $die1 ]] && [[ $die4 -le $die2 ]] && [[ $die4 -le $die3 ]] && [[ $die4 -le $die5 ]]
then
echo "Minimum number is = $die4"
else
echo "Minimum number is = $die5"
fi

if [[ $die1 -ge $die2 ]] && [[ $die1 -ge $die3 ]] && [[ $die1 -ge $die4 ]] && [[ $die1 -ge $die5 ]]
then
echo "Maximum number is =  $die1"
elif [[ $die2 -ge $die1 ]] && [[ $die2 -ge $die3 ]] && [[ $die2 -ge $die4 ]] && [[ $die2 -ge $die5 ]]
then
echo "Maximum number is =  $die2"
elif [[ $die3 -ge $die1 ]] && [[ $die3 -ge $die2 ]] && [[ $die3 -ge $die4 ]] && [[ $die3 -ge $die5 ]]
then
echo "Maximum number is = $die3"
elif [[ $die4 -ge $die1 ]] && [[ $die4 -ge $die2 ]] && [[ $die4 -ge $die3 ]] && [[ $die4 -ge $die5 ]]
then
echo "Maximum number is = $die4"
else
echo "Maximum number is = $die5"

fi
