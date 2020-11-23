#! /bin/bash 

money=100
bet=0
won=0
while [[ $money -ne 200 ]] && [[ $money -ne 0 ]]
do
x=$((RANDOM % 2 + 0))
((bet+=1))
if [ $x -eq 0 ];
then
echo "Won"
((money+=1))
((won+=1))
else
echo "Lost"
((money-=1))
fi
done

echo "Number of bets" $bet
echo "Number of times won" $won
echo "Money in Hand at end" $money
