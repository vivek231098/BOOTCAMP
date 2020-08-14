i=0
for (( i=0; i<10; i++ ))
do
	randomCheck=$(((RANDOM%900)+100))
	a[i]=$randomCheck
done

echo ${a[@]}

SecondLargest=$(printf '%s\n' "${a[@]}" | sort -n | tail -2 | head -1 )
echo "The Second Largest Number is : $SecondLargest"

SecondSmallest=$(printf '%s\n' "${a[@]}" | sort -nr | tail -2 | head -1 )
echo "The Second Smallest Number is : $SecondSmallest"
