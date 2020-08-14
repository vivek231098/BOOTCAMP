#!/bin/bash -x
read -p "Enter a valid firstName : " firstname

pattern1="^[A-Z]{1}[aA-zZ]*$"

if [[ $firstname =~ $pattern1 ]]
then
	echo True;
else
	echo False;
fi

read -p "Enter a valid lastname : " lastname

pattern2="^[A-Z]{1}[a-zA-Z]*$"

if [[ $lastname =~ $pattern2 ]]
then
        echo True;
else
        echo False;
fi

read -p "Enter a valid emailID : " email

pattern3="([a-z0-9 _ - .]+)@([a-z]+)\.([a-z]{2,5})\.([a-z]{2,5})\.([a-z]{2,5})$"

if [[ $email =~ $pattern3 ]]
then
        echo True;
else
        echo False;
fi

read -p "Enter you phone number : " num

pattern4="([0-9]{2})\ ([1-9]{1}[0-9]{9})$"
if [[ $num =~ $pattern4 ]]
then
        echo True;
else
        echo False;
fi


