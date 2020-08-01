random=$((RANDOM%2)) 
if [ $random -eq 0 ]
then 
	echo "heads" 
else 
	echo "tails" 
fi
