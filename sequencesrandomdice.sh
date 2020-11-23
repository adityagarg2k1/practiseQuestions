#!/bin/bash

SPOTS=6
die1=0

let "die1 = $RANDOM % $SPOTS +1"

echo "Throw of the dice = $die1"
echo

exit 0
