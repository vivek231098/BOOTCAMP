#!/bin/bash -x

read -p "Enter the pin-code" value

pattern="^[1-9]{1}[0-9]{5}$" 

if [[ $value =~ $pattern ]]
then 
	echo True;
else
	echo False;
fi

