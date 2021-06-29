#!/bin/bash

declare -i theresult=0

add_function()
{
	theresult=$(( firstnumber + secondnumber ))
}
subtract_function()
{
	theresult=$(( firstnumber - secondnumber ))
}
divide_function()
{
	theresult=$(( firstnumber / secondnumber ))
}
multiply_function()
{
	theresult=$(( firstnumber * secondnumber ))
}

# Print the usage
echo "Usage: please type"
echo "1 to add two numbers and print the result"
echo "2 to subtract two numbers and print the result"
echo "3 to divide two numbers and print the result"
echo "4 to multiply two numbers and print the result"
echo ""
echo ""

# Read the user input
echo "Please enter your option between 1 to 4"
read useroption

if [ $useroption -gt 4 ] || [ $useroption -lt 1 ]
then
	echo "You have entered incorrect option. Please try again"
	exit 1
fi

echo "Please enter first number"
read firstnumber

echo "Please enter second number"
read secondnumber

if [ $useroption -eq 1 ]
then
	add_function $firstnumber $secondnumber
elif [ $useroption -eq 2 ]
then
	subtract_function $firstnumber $secondnumber
elif [ $useroption -eq 3 ]
then
	divide_function $firstnumber $secondnumber	
elif [ $useroption -eq 4 ]
then
	multiply_function $firstnumber $secondnumber	
fi

echo "Result is $theresult"
