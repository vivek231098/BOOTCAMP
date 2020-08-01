for i in {1..5}
do
n1=$(( $RANDOM%90+10 ))
	echo "firstnumber" $n1
n2=$(( $RANDOM%90+10 ))
	echo "secondnumber" $n2
sum=$(( $n1+$n2 ))
	echo "sum" $sum
avg=$(( ($n1+$n2)/2 ))
	echo "avg" $avg
done
