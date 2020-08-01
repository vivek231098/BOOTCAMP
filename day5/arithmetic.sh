read -p "Enter a " a 
read -p "Enter b " b 
read -p "Enter c " c 
first=$(($a + $(($b * $c)))) 
second=$(($(($a % $b ))+ $c)) 
third=$(($c + $(($a / $b)))) 
fourth=$(($(($a * $b)) + $c)) 
if [ $first -gt $second ] && [ $first -gt $third ] && [ $first -gt $fourth ] 
then 
echo "a+b*c is greatest" 
elif [ $second -gt $first ] && [ $second -gt $third ] && [ $second -gt $fourth ] 
then 
echo "a%b+c is greatest" 
elif [ $fourth -gt $first ] && [ $fourth -gt $second ] && [ $fourth -gt $third ] 
then 
echo "c+a/b is greatest" 
else 
echo " a *b +c is greatest " 
fi 
if [ $first -lt $second ] && [ $first -lt $third ] && [ $first -lt $fourth ] 
then 
echo "a+b*c is lowest" 
elif [ $second -lt $first ] && [ $second -lt $third ] && [ $second -lt $fourth ] 
then 
echo "a%b+c is lowest" 
elif [ $third -lt $first ] && [ $third -lt $second ] && [ $third -lt $fourth ] 
then 
echo "c+a/b is lowest" 
else 
echo " a *b +c is lowest " 
fi 
