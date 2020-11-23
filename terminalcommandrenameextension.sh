#! /bin/bash
date=$(date +%d%m%y)
for filename in `ls *.log.1`
do
        basename=`echo $filename | awk -F. '{print $1}'`
        extension=`echo $filename | awk -F. '{print $2}'`
        mv "$filename" "$basename"-"$date.$extension"
done
