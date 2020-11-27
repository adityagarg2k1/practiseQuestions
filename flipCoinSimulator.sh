#!/bin/bash -x

a=0
b=0

while [ $a -lt 21 ] && [ $b -lt 21 ]
do
coin=$((RANDOM % 2 + 1))
# Value of 1 is heads, 2 is tails
if [ $coin -eq 1 ]; then
  echo "heads."
((a=$a+1))
elif [ $coin -eq 2 ]; then
  echo "tails."
((b=$b+1))
else 
echo " "
fi
done

echo "head won:" $a
echo "tail won:" $b

if [ $a -eq $b ]
then
echo "It is a tie"
elif [ $a -gt $b ]
then
echo "Head won by: " $(($a-$b))
elif [ $a -lt $b ]
then
echo "Tail won by: " $(($b-$a))
else
echo " " 
fi
