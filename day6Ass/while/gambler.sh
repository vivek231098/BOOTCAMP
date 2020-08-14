win=0
loss=0
bet=100
i=0
while [[ $bet -gt 0 && $bet -le 200 ]]
do
   randomcheck=$((RANDOM%2))
   if [[ $randomcheck -eq 0 ]]
   then
      ((win++))
      ((loss++))
   else
      ((loss++))
      ((bet--))
   fi
done 
echo "win : $win"
echo "loss : $loss"
echo " money left : $bet"
