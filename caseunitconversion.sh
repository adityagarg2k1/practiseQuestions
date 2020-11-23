#!/bin/bash -x

read -p "Enter your number:" a
read -p "Enter your option: (1 for feet to inch), (2 for feet to meter), (3 for inch to feet), (4 for meter to feet):" option

((w=$a*12))
((x=$a/3))
((y=$a/12)) 
((z=$a*3))

case $option in
1)
echo "$a feet is $w inch" ;;
2)
echo "$a feet is $x meter" ;;
3)
echo "$a inch is $y feet" ;;
4)
echo "$a meter is $z feet" ;;
esac



