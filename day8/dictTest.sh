#!/bin/bash -x

declare -A sounds

sounds[dog]="Bark"
sounds[cow]="moo"
sounds[birds]="tweet"
sounds[wolf]="howl"

echo "Sound of dog " ${sounds[dog]}
echo "All Animal Sounds " ${sounds[@]}
echo "All Animals" ${!sounds[@]}
echo "No of keys" ${#sounds[@]}
unset sounds[dog]
echo ${!sounds[@]}

for values in $sounds
do
	echo $values
done
