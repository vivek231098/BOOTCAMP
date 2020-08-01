#!/bin/bash
read -p "Enter a date (dd-mm): " dd mm
if [ \( "$dd" -ge 20 -a "$mm" -eq 3 \) -o "$mm" -eq 5 ] 
then 
   if [ "$dd" -le 31 ]
   then
      echo "True"
   else
      echo "False"
   fi
elif [ "$mm" -eq 4 -o \( "$mm" -eq 6 -a "$dd" -le 20 \) ]
then
   if [ "$dd" -le 30 ]
   then 
      echo "True"
   else
      echo "False"
   fi
else
   echo "False"
fi
