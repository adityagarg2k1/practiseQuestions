#/bin/bash

read -p "Enter Single Digit number:" y

if [ $y -eq 0 ]
then
echo "Zero"
elif [ $y -eq 1 ]
then
echo "One"
elif [ $y -eq 2 ]
then
echo "Two"
elif [ $y -eq 3 ]
then
echo "Three"
elif [ $y -eq 4 ]
then
echo "Four"
elif [ $y -eq 5 ]
then
echo "Five"
elif [ $y -eq 6 ]
then
echo "Six"
elif [ $y -eq 7 ]
then
echo "Seven"
elif [ $y -eq 8 ]
then
echo "Eight"
elif [ $y -eq 9 ]
then
echo "Nine"
else
echo "Not a single digit"
fi
