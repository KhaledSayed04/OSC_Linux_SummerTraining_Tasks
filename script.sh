#!/bin/bash
function a
{
	echo "Enter number x"
	read x

	read -p "Enter number y 
" -s y # -s shadow mode (doesn't show the user what he writes)
	echo " ------------- " 

	echo "x + y = $((x + y))"
	echo " ------------- " 

	let "x = x + y"
	((++y))

	echo "x became $x"
	echo "y became $y"
	echo " ------------- " 


	echo "x + y = $((x + y))"
	let "sum = x + y"
	echo "x + y = $sum"
	sum=$(expr $x + $y)
	echo "x + y = $sum"

	echo ""

	echo "x * y = $((x * y))"
	let "product = x * y"
	echo "x * y = $product"
	product=$(expr $x \* $y) 
	echo "x * y = $product"

	echo ""

	echo "x square = $((x ** 2))"
	let "square = x ** 2"
	echo "x square = $square"
	#square isn't available with expr
	#square=$(expr $x \*\* 2) 
	#echo "x square = $square"

	echo ""


	echo "x / y = $((x / y))"
	let "quotient = x / y"
	echo "x / y = $quotient" 
	quotient=$(expr $x / $y)
	echo "x / y = $quotient"
		
	echo ""

	echo "x % y = $((x % y))"
	let "mod = x % y"
	echo "x % y = $mod" 
	mod=$(expr $x % $y)
	echo "x % y = $mod"
}
-----------------
b()
{
	read -p "Enter string x : " x
	read -p "Enter string y : " y
		
	if [[ $x = $y ]] # same as $x == $y
		then
			echo "x = y"
	fi
		
	if [[ $x != $y ]]
		then
			echo "x != y"
	fi
		
	if [[ $x < $y ]]
		then
			echo "x < y"
	elif [[ $x > $y ]]
		then 
			echo "x > y"
	else
			echo "x = y"
	fi
}
-----------------
function c
{
	read -p "Enter number x : " x
	read -p "Enter number y : " y
		
	if [[ $x -eq $y ]]
		then 
			echo "x = y"
	fi
		
	if [[ $x -ne $y ]]
		then
			echo "x != y"
	fi
		
	if [[ $x -lt $y ]]
		then 
			echo "x < y"
	fi
		
	if [[ $x -gt $y ]]
		then 
			echo "x > y"
	fi
		
	if [[ $x -le $y ]]
		then 
			echo "x <= y"
	fi
		
	if [[ $x -ge $y ]]
		then
			echo "x >= y"
	fi
	
	if [[ $((x % 2)) -eq 0 && $((y % 2)) -eq 0 ]]
		then
			echo "both x and y are even"
	elif [[ $((x % 2)) -eq 0 && $((y % 2)) -eq 0 ]]
		then
			echo "either x is even or y is"
	fi
}
-----------------
function d
{
	read -p "Enter file name : " x
		
	if [[ -d $x ]]
		then 
			echo "$x is a directory !"
	fi
		
	if [[ -f $x ]]
		then 
			echo "$x is a ordinary file !"
	fi
		
	if [[ -e $x ]]
		then 
			echo "$x exists"
	fi
		
	if [[ -r $x ]] # -w writable # -x executable
		then
			echo "$x is readable"
	fi
}
-----------------
function e
{
	for i in 1..5
	do
		echo "i = $i"
	done
	
	echo "----"
	
	for (( i=1 ; i <= $1; i++ ));
	do
		echo "i = $i"
	done 
	
	echo "----"
	
	num=1
	while [ $num -le 5 ]
	do
		echo "num = $num"
		#continue
		((num++))
		#break 
	done 
}
############################################
case $1 in
	1 )
		a;;	
		
############################################
	2 )
		b;;
		
############################################
	3 )
		c;;
############################################
	4 )
		d;;
############################################
	5 )
		
		e 5;;
############################################
	* ) 
		echo "not valid choice :)"
esac
############################################
#exit

