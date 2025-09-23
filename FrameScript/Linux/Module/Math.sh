#!/bin/bash
# Name: Math.sh
# Purpose: Math bash script
# -------------------------

# region Math

# parameter1: <number> First operand.
# parameter2: <character> Arithmetic operation. One of: + - * / %.
# parameter3: <number> Second operand.
# parameter4: <number> Maximum decimal point.
# return = <number> Calculation result.
# sample1 - <number> = $(FrameScript.Math.Arithmetic.calculate $<number1> '<+|-|*|/|%>' $<number2> $<number3>);
function FrameScript.Math.Arithmetic.calculate() {
	local value1=$1;
	local operation=$2;
	local value2=$3;
	local scale=$4;
	local result=$(bc -l <<< "scale=$scale; $value1 $operation $value2");
	echo -n $result;
}

function FrameScript.Math.Arithmetic.test() {
	echo -e "\nTesting FrameScript.Math.Arithmetic";
	echo -e "\nFrameScript.Math.Arithmetic.calculate()";
	echo "2 + 3 = $(FrameScript.Math.Arithmetic.calculate 2 '+' 3 2)";
	echo "5.5 - 1.2 = $(FrameScript.Math.Arithmetic.calculate 5.5 '-' 1.2 2)";
	echo "4 * 2.5 = $(FrameScript.Math.Arithmetic.calculate 4 '*' 2.5 2)";
	echo "10 / 3 = $(FrameScript.Math.Arithmetic.calculate 10 '/' 3 0) (No decimal point)";
	echo "10 / 3 = $(FrameScript.Math.Arithmetic.calculate 10 '/' 3 2)";
	echo "10 % 3 = $(FrameScript.Math.Arithmetic.calculate 10 '%' 3 0)";
}

# end region