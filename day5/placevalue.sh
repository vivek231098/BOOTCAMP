read -p "number " n 
if [[ $n -gt 0 && $n -lt 10 ]] 
then 
unitsplace=$(($n%10)) 
echo " unitsplace is $unitsplace" 
elif [[ $n -gt 10 && $n -lt 100 ]] 
then 
unitsplace=$(($n%10)) 
tensplace=$(($(($n/10))%10)) 
echo " Tens place :$tensplace units place :$unitsplace" 
elif [[ $n -gt 100 && $n -lt 1000 ]] 
then 
unitsplace=$(($n%10)) 
tensplace=$(($(($n/10))%10)) 
hundredsplace=$(($(($n/100))%10)) 
echo " Hundreds place $hundredsplace Tens place :$tensplace units place :$unitsplace" 
else 
unitsplace=$(($n%10)) 
tensplace=$(($(($n/10))%10)) 
hundredsplace=$(($(($n/100))%10)) 
thousandsplace=$(($n/1000)) 
echo " Thousands place :$thousandsplace 
Hundreds place :$hundredsplace 
Tens place :$tensplace 
units place :$uni" 
fi
