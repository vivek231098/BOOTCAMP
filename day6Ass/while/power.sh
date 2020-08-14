read -p "Enter the number : " num
i=1;
echo "$num"
while [ $num -lt 256 ]
do
   num=$((2**$i))
   echo "2^$i = $num"
   ((i++))
done
echo "$num"
