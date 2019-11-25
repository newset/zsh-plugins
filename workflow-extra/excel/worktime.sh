#! /bin/bash

# 获取加班餐人员统计
file=$1

echo $file

awk -F',' '{if(sum[$1]==""){sum[$1]=$2}else{sum[$1]=sum[$1]","$2}sumnum[$1]+=1}END{for(key in sum){print key ,sum[key],sumnum[key]}}' $file > res.txt;

cat res.txt