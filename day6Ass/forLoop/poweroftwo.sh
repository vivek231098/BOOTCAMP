read -p "Enter the number : " num

for (( i=1 ; i<=$num ; i++ ))
do 
	powerof=$((2**$i))
	echo "Power of 2^$i is : $powerof"
done
