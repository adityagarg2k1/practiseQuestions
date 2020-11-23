#!/bin/bash -x
i=0
read -p "Enter a number: " y

function prime()
{
flag=0
x=0
if [ $i -eq 0 ]
then
n=$y
((i++))
else
n=$rev
fi
for ((count=2;count<=n/2;count+=1))
do
((x=$n%$count))
if [ $x -eq 0 ]
then
flag=1
fi
done

if [ $flag -eq  1 ]
then
echo "$n is a not a prime "
else
echo "$n is a prime"
fi
}

function palindrome()
{
#num=545
num=$y
# Storing the remainder
s=0

# Store number in reverse
# order
rev=""

# Store original number
# in another variable
temp=$num

while [ $num -gt 0 ]
do
    # Get Remainder
    s=$(( $num % 10 ))

    # Get next digit
    num=$(( $num / 10 ))

    # Store previous number and
    # current digit in reverse
    rev=$( echo ${rev}${s} )
done

if [ $temp -eq $rev ];
then
    echo "Number is palindrome"
else
    echo "Number is NOT palindrome"
fi
}

prime
palindrome
prime 
