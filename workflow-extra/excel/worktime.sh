#! /bin/bash

# 获取加班餐人员统计
file=$1

echo $file

# check $file.csv -d

awk -F',' -f do.awk $file.csv > $file.txt;
