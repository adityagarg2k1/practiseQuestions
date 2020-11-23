#!/bin/bash 
i=1
arrvar=()

while [ $i -le 10 ]
do
let "x=$(( RANDOM % (999 - 100 + 1 ) + 100 ))"
arrvar+=("$x")
echo "${arrvar[@]}"
((i++))
done

largest=${arrvar[0]}
secondGreatest='unset'

for((i=1; i < ${#arrvar[@]}; i++))
do
  if [[ ${arrvar[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${arrvar[i]}
  elif (( ${arrvar[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${arrvar[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${arrvar[i]}
  fi
done

echo "secondGreatest = $secondGreatest"

smallest=${arrvar[0]}
secondSmallest='unset'

for((i=1; i < ${#arrvar[@]}; i++))
do
  if [[ ${arrvar[i]} < $smallest ]]
  then
    secondSmallest=$smallest
    smallest=${arrvar[i]}
  elif (( ${arrvar[i]} != $smallest )) && { [[ "$secondSmallest" = "unset" ]] || [[ ${arrvar[i]} < $secondSmallest ]]; }
  then
    secondSmallest=${arrvar[i]}
  fi
done

echo "secondSmallest = $secondSmallest"
