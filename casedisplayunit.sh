#!/bin/bash

read -p "Enter a number in multiple of 1 or 10:" n
case $n in
1)
echo "Unit";;
10)
echo "Ten";;
100)
echo "Hundred";;
1000)
echo "Thousand";;
10000)
echo "Ten Thousand";;
100000)
echo "Hundred Thousand";;
*)
echo "etc";;
esac
