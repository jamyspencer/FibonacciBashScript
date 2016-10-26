#!/bin/bash


function fibo {
	count=1
	value=1
	prevValue=0
	swap=1
	until (( $count == $1 ))
	do
		if (( count == 1 ))
		then
			printf "%s " "$value"
		fi
		let count=$count+1
		let swap=$value
		let value=$value+$prevValue
		prevValue=$swap
		printf "%s " "$value"
	done
	printf "\n"
}

num=1
while (( "$num" > 0 ))
do
	printf "%s" "Enter n, or 0 to quit: "
	read num
    if (( "$num" != 0 ))
    then
    	printf "%s\n" "$num"
	    fibo $num
    fi
done
