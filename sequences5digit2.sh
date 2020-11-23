#!/bin/bash -x

die1=0
die2=0
die3=0
die4=0
die5=0

let "die1 = $((RANDOM% (99-10+1) + 10))"
let "die2 = $((RANDOM% (99-10+1) + 10))"
let "die3 = $((RANDOM% (99-10+1) + 10))"
let "die4 = $((RANDOM% (99-10+1) + 10))"
let "die5 = $((RANDOM% (99-10+1) + 10))"

let "throw = $die1 + $die2 + $die3 + $die4 + $die5"
echo "Sum is = $throw"
let "Average = $throw/5"
echo "Average is = $Average"
echo

exit
