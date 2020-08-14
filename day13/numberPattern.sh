#!/bin/bash -x

read value

pattern="^[0-9]*$"
if [[ $value =~ $pattern ]]
then
	echo true;
else
	echo False;
fi
