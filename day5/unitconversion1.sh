 #!/bin/bash -x
inc=inches
ft=feet
mts1=metres
mts2=metres

read -p "Enter inches : " inc
    echo "$inc=$[inc/12]$ft"

read -p "Enter feet : " ft1
    echo "$mts1a=$[ft1/3]$mts1"

read -p "Enter feet : " ft2
    echo "$mts2a=$[ft1/3]$mts2"

ft1a=$((  ft1/3 ))
ft2a=$(( ft2/3 ))
area=$(( $ft1 * $ft2 * 25 ))
acre=$(( $area/43560 ))
    echo "Area of 25 such plot in acres is : $acre"
