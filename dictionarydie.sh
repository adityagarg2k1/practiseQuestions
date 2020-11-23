#! /bin/bash

declare -A die 

while [[ ${die[1]} -lt 10 ]] && [[ ${die[2]} -lt 10 ]] && [[ ${die[3]} -lt 10 ]] && [[ ${die[4]} -lt 10 ]] && [[ ${die[5]} -lt 10 ]] && [[ ${die[6]} -lt 10 ]]
do
x=$((RANDOM%6 + 1))
((die[$x]+=1))
done

for key in ${!die[@]}
do
echo "$key => ${die[$key]}"
done
