#! /bin/bash
# 批量替换扩展名

from=${from:-css}
to=${to:-less}
dir=${dir:-`pwd`}

while getopts f:t:d: option 
do 
 case "${option}" 
 in 
 f) from=${OPTARG};;
 t) to=${OPTARG};;
 d) dir=${OPTARG};;
 esac 
done 

echo "$from $to, $dir"

find $dir -name "*.$from" | sed "s/\.$from$//" | xargs -I{} mv {}.$from {}.$to