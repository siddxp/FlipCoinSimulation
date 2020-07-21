#!/bin/bash
headsCount=0
tailsCount=0
valid=true

function flipCoinSimulator()
{

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

		if [ $headsCount -eq 21 ]
		then
			result=$(( $headsCount-$tailsCount ))
			echo "Heads won,difference of result is : " $result
			break;
		elif [ $tailsCount -eq 21 ]
		then
			result= $(( $tailsCount-$headsCount ))
			echo "Tails won,difference of result is : " $result
			break;
		elif [ $headsCount -eq 21 ] && [ $tailsCount -eq 21 ]
		then
			echo "It's a Tie"
			break;
		else
			echo "Invalid Result"
		fi
	done
echo "Heads : $headsCount"
echo "Tails : $tailsCount"
}
flipCoinSimulator
