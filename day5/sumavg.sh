for i in {1..5} 
do 
	number=$(( RANDOM%90+10 )) 
	echo "$number" 
	sum=$(( $sum +$number )) 
done 
	echo "$sum" 
	average=$(( $sum/5 )) 
