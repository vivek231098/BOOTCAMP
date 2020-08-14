read -p "Think a number between 1 to 100 : " num
m=1
while [ $num -lt 100 ]
do 
	if [ $num -gt $(($num/2)) ]
	then
		((m++))
	fi
	if [ $num -eq $m ]
	then 
		echo "Magic number the person thought was : $m"
	exit
	fi
done
