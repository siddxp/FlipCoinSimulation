#!/bin/bash -x
headsCount=0
tailsCount=0
valid=true
while [ valid ]
do
	randomCoin=$(( RANDOM%2 ))
	if [ $randomCoin -eq 0 ]
	then
		echo " It's Heads"
		headsCount=$(($headsCount+1))
	else
		echo " It's Tails"
		tailsCount=$(($tailsCount+1))
	fi
done
echo "Heads : $headsCount"
echo "Tails : $tailsCount"
