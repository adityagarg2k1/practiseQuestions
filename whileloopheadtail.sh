#!/bin/sh -x
a=0
b=0

while [ $a -lt 11 ] && [ $b -lt 11 ]
do
printf "Choose (h)eads or (t)ails: "
read user_choice
# Make sure user chooses between heads or tails
if [ $user_choice != h ] && [ $user_choice != t ]; then
  echo "Invalid choice. Defaulting to (h)eads."
  user_choice=h
fi
# Value of 1 is heads, 2 is tails
computer_choice=$((RANDOM % 2 + 1))
if [ $computer_choice -eq 1 ]; then
  echo "Computer chose heads."
else
  echo "Computer chose tails."
fi
if [ $computer_choice -eq 1 ] && [ $user_choice = h ]; then
  # Correct
  echo "You win!"
  ((a=$a+1))
elif [ $computer_choice -eq 1 ] && [ $user_choice = t ]; then
  # Incorrect
  echo "You lose!"
elif [ $computer_choice -eq 2 ] && [ $user_choice = t ]; then
  # Correct
  echo "You win!"
  ((b=$b+1))
else
  # Incorrect
  echo "You lose!"
fi
done
