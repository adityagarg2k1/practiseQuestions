#!/bin/bash
for filename in `ls *.txt`
do
        foldername=`echo $filename | awk -F. '{print $1}'`
        mkdir $foldername
        mv $filename $foldername
done
