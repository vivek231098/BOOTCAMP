read -p "Enter the number : " num
flag=0
for (( i=2; i <= $num/2 ;i++ ))
do
	if [ $(($num%i)) -eq 0 ]
	then
		flag=1
		echo "$num is NOT PRIME"
		exit
	fi
done
if [ $flag -eq 0 ]
then
	echo "$num is PRIME"
else
	echo "$num is NOT PRIME"
fi
