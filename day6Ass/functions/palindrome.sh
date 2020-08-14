read -p "Enter the number : " num
function palindrome1() {
	reverse=0
	n=0
	while [ $num -ne 0 ]
	do
		n=$(($num%10))
		reverse=$(($reverse*10+$n))
		num=$(($num/10))
	done
	echo "$reverse"
}

function palindrome2() {
	if [ $s -eq $num ]
	then
		echo "Number is Palindrome"
	else
		echo "Number is not a Palindrome"
	fi
}

s="$(palindrome1 num)"
echo $s
echo $num

if [ $s -gt 0 ]
then
	p="$(palindrome2 1)"
fi
echo $p
