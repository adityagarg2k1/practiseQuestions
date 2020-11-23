#! /bin/bash -x

x=1
read -p "Enter a number: " n

for ((count=2;count<=n;count+=1))
do
#y = $((1/$count))
value=`awk 'BEGIN {print 1/$count}'`
x=$((x+value))
# echo `awk 'BEGIN{print (1/5)}'`
#echo $x
#((x=1/count))
done
echo $x
