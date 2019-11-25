#! /bin/bash


age=14

echo $age;

read -p "teste: " age

if ((age >= 16))
then
    echo "$age";
elif [ $age == 15 ]
then 
    echo "shit"
fi