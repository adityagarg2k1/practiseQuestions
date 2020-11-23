#!/bin/bash -x

read -p "Enter Month: " Month
read -p "Enter Date: " Date

if [[ $Month -eq 3 ]] && [[ $Date -gt 20 ]] && [[ $Date -le 31 ]]
then 
echo "True"
elif [[ $Month -eq 4 ]] && [[ $Date -gt 0 ]] && [[ $Date -lt 31 ]]
then 
echo "True"
elif [[ $Month -eq 5 ]] && [[ $Date -gt 0 ]] && [[ $Date -le 31 ]]
then
echo "True"
elif [[ $Month -eq 6 ]] && [[ $Date -gt 0 ]] && [[ $Date -lt 20 ]]
then 
echo "True"
else
echo "False"
fi
