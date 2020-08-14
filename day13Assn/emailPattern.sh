#!/bin/bash -x

read -p "Enter your email : " email

pattern="([a-z0-9 _ - .]+)@([a-z]+)\.([a-z]{2,5})$"

if [[ $email =~ $pattern ]]
then
	echo "Valid Email"
else
	echo "Invalid Email"
fi
