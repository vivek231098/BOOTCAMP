read -p "Enter number : " num
function getprime() {
	for (( i=2; i<$num; i++ ))
	do
		if [ $(( $num%$i )) == "0" ]
		then
			echo "Not Prime"
			exit
		fi
	done
	echo "Prime"
}


function getpalindrome() {
	a=$num
	total=0
	while [ $num -gt 0 ]
	do
		end=$(( $num%10 ))
		total=$(( $(( $total * 10 )) + $end ))
		num=$(( $num/10 ))
	done
	if [[ $total -eq $a ]]
	then
		echo "PALINDROME"
	else
		echo "NOT PALINDROME"
	fi
}

palin=$( getpalindrome num )
prime =$( getprime num )
if [[ "$prime" -eq "Prime" && "$palin" -eq "PALINDROME" ]]
then
	echo "PRIME AND PALINDROME"
else
	echo "NOT PRIME/PALINDROME"
fi

echo $prime
echo $palin
