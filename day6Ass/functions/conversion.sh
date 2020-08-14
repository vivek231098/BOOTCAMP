read -p "Conversion to be done : " con
degf=1;
degc=2;
function conversion() {
   case $con in
	$degf)
	   	read -p "Enter in Centigrades " centi
		if [[ $centi -ge 0 && $centi -le 100 ]]
		then
			Degreef=$((($centi*9/5) + 32))
			echo "Termperature is $degf Farhenheit"
		else
			echo "Range between 0 & 100"
			exit
		fi
		;;

	$degc)
		read -p "Enter in Farehneit : " far
		if [[ $far -ge 32 && $far -le 212 ]]
		then
			degc=$((($far-32)*5/9))
			echo "Termperature in $degc Centigrades"
		else
			echo "Not in range"
			exit
		fi
		;;
	*)
		echo "No conversion"
		;;
   esac
}

t="$(conversion con)"
echo $t
