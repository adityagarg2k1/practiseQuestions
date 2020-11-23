#/bin/bash

read -p "Enter Number to display week day :" y

if [ $y -eq 1 ]
then
echo "Sunday"
elif [ $y -eq 2 ]
then
echo "Monday"
elif [ $y -eq 3 ]
then
echo "Tuesday"
elif [ $y -eq 4 ]
then
echo "Wednesday"
elif [ $y -eq 5 ]
then
echo "Thursday"
elif [ $y -eq 6 ]
then
echo "Friday"
elif [ $y -eq 7 ]
then
echo "Saturday"
else
echo "Not a day of the week"
fi


