i=0
declare -A month
while [ $i -lt 50 ]
do
	randomCheck=$(((RANDOM%12)+1))
	if [ $randomCheck -eq 1 ]
	then
		month["$i"]="JANUARY"
	elif [ $randomCheck -eq 2 ]
	then
		month["$i"]="FEBRUARY"
        elif [ $randomCheck -eq 3 ]
        then
                month["$i"]="MARCH"
        elif [ $randomCheck -eq 4 ]
        then
                month["$i"]="APRIL"
        elif [ $randomCheck -eq 5 ]
        then
                month["$i"]="MAY"
        elif [ $randomCheck -eq 6 ]
        then
                month["$i"]="JUNE"
        elif [ $randomCheck -eq 7 ]
        then
                month["$i"]="JULY"
        elif [ $randomCheck -eq 8 ]
        then
                month["$i"]="AUGUST"
        elif [ $randomCheck -eq 9 ]
        then
                month["$i"]="SEPTEMBER"
        elif [ $randomCheck -eq 10 ]
        then
                month["$i"]="OCTOBER"
        elif [ $randomCheck -eq 11 ]
        then
                month["$i"]="NOVEMBER"
        else
                month["$i"]="DECEMBER"
	fi
((i++))
done

printf '%s\n' "${month[@]}" | sort | uniq -c | sort -nr
