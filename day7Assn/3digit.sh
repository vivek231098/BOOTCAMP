a=0
for i in {1..10}
do
	n=$(( RANDOM%900 + 100 ))
	array[a]=$n
	a=$(( $a + 1 ))
done
echo ${array[@]}
smallest=${array[0]}
largest=${array[0]}

for i in ${array[@]}
do
	if [[ $i -lt $smallest ]]
	then
		smallest=$i
	fi
	if [[ $i -gt $largest ]]
	then
		largest=$i
	fi
done

SecondSmallest=${array[0]}
SecondLargest=${array[0]}

for i in ${array[@]}
do
	if [[ $i -lt $SecondSmallest && $i -gt $smallest ]]
	then
		SecondSmallest=$i
	fi
	if [[ $i -gt $SecondLargest && $i -lt $largest ]]
	then
		SecondLargest=$i
	fi
done

echo "Second Smallest number is : $SecondSmallest"
echo "Second Largest number is : $SecondLargest"
