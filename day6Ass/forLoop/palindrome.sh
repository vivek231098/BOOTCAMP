#!/bin/bash -x
read -p "Enter the number : " n
function palindrome() {
rev=0
temp=$n

while [ $n -gt 0 ]
do
    sum=$(( $n % 10 ))  
    rev=$(( $(( $n * 10 )) + $sum ))
    n=$(( $n / 10 ))
done
 
if [[ $rev -eq $temp ]];
then
  echo "Number is palindrome"
else
  echo "Number is NOT palindrome"
fi
}
palindrome $n
