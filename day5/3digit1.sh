for file in {1..5} 
do 
   randomCheck=$(($((RANDOM%990))+100)) 
   echo "$randomCheck"
   if [ $file -eq 1 ] 
   then 
      max=$randomCheck 
   else 
   if [ $randomCheck -gt $max ] 
   then 
      max=$randomCheck
   fi  
   fi 
   if [ $file -eq 1 ] 
   then 
      min=$randomCheck
   else 
   if [ $randomCheck -lt $min ] 
   then 
      min=$randomCheck 
   fi 
   fi 
      echo "max=$max "
      echo "min=$min" 
done
