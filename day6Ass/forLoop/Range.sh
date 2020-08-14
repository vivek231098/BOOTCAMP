read -p "Enter the lower range : " lower
read -p "Enter the upper range : " upper

s=0

for num in `seq $lower $upper`
do
	result=`factor $num | cut -d ":" -f 2 | cut -d " " -f 2`
	if [ "$result" -eq "$num" ]
	then
		array[$s]=$num
		s=$(( $s + 1 ))
	fi
done
echo ${array[@]}
