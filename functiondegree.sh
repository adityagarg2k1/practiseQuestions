#! /bin/bash -x

read -p "Enter the type of conversion: (1 To convert C to F), (2 To convert F to C):" n

if [ $n -eq 1 ];
then
read -p "Enter values between 0 and 100:" Temp
else
read -p "Enter values between 32 and 212:" Temp
fi

function CToF(){
degF=$(($1*9/5+32))
echo "$1 C is $degF F"
}
function FToC(){
degC=$(((($1-32))*5/9))
echo "$1 F is $degC C"
}

case $n in 
1)
CToF $Temp;;
2)
FToC $Temp;;
*)
echo "Enter a valid option"
esac 
