Heads=0
Tails=0
while [[ $Heads -lt 11 && $Tails -lt 11 ]]
do
	randomCheck=$((RANDOM%2))
	if [[ $randomCheck -eq 0 ]]
	then
		((Heads++))
		echo "Heads incurred"
	else
		((Tails++))
		echo "Tails incurred"
	fi
done
echo "Tails : $Tails Heads : $Heads"


