read -p "Enter the value : " num
for (( i=1;i<=$num ;i++ ))
do
   reciprocal=1/$i
   n=$n+$reciprocal
   echo "$n"
   dec=$(echo | awk '{print '1/$i'}')
   sum=$(echo | awk '{print '$sum+$dec'}')
done
echo "$sum"
