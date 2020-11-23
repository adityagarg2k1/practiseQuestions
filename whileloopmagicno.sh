#! /bin/bash -x

read -p "Think of a number between 1 and 100:" n
guess=1
while [ $guess -ne $n ]
do
num=$(($n/2))
if [ $guess -lt $num ]
then
((guess++))
else
((guess--))
fi
done

echo "Is magic number" $guess
