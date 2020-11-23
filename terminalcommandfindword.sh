#!/bin/bash

for filename in `ls *.log` 
do 
foldername=`cat $filename | grep -io system | uniq –c` 
echo $foldername $filename
done
