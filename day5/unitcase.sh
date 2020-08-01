read -p "Enter a number" num
number=`echo $num | awk -F- '{print $1}'`
unit=`echo $num | awk -F- '{print $2}'`
   case $unit in 
      feet_to_inch)
      	value=$(( $number * 12 ))
      	echo "The value for feet to inch conversion is: " $value
      	;;   
      feet_to_metre)
      	value=$(( $number / 3 ))
      	echo "The value for feet to metre conversion is: " $value
      	;;
      inch_to_feet)
      	value=$(( $number / 12 ))
      	echo "The value for inch to feet conversion is: " $value
      	;;
      metre_to_feet)
      	value=$(( $number * 3 ))
      	echo "the value of metre to feet conversion is: " $value
      	;;
   esac
