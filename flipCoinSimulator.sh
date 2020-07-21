#!/bin/bash -x
randomCoin=$(( RANDOM%2 ))
if [ $randomCoin -eq 0 ]
then
	echo " It's Heads"
else
	echo " It's Tails"
fi
