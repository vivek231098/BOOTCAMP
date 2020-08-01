read -p "Enter a number: " number
case ${#number} in
   1)
	echo "Units place: "$(( $number%10 ))
	;;
   2)
	echo "Units place: "$(( $number%10 ))
	echo "Tens place: "$(( $(( $number/10 )) %10 ))
	;;
   3)
	echo "Units place: "$(( $number%10 ))
        echo "Tens place: "$(( $(( $number/10 )) %10 ))
	echo "Hundreds place: "$(( $(( $number/100 )) %10 ))
	;;
   3)
	echo "Units place: "$(( $number%10 ))
        echo "Tens place: "$(( $(( $number/10 )) %10 ))
        echo "Hundreds place: "$(( $(( $number/100 )) %10 ))
	echo "Thousands place: "$(( $(( $number/1000 )) %10 ))
	;;
   *)
	echo "Only numbers from 1 to 9999"
	;;
esac
