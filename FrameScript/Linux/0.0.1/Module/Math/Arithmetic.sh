#!/bin/bash
# Name: Arithmetic.sh
# Purpose: Arithmetic bash script
# -------------------------------

# region Arithmetic

# Calculator
# FrameScript.Math.Arithmetic.calculate <operand1> '<+|-|*|/|%>' <operand2> <scale>
# Parameter1: <number> First operand.
# Parameter2: <character> Arithmetic operation. One of: + - * / %.
# Parameter3: <number> Second operand.
# Parameter4: <number> Maximum decimal point.
# Output: <number> Calculation result.
function FrameScript.Math.Arithmetic.calculate() {
	declare value1=${1};
	declare operation="${2}";
	declare value2=${3};
	declare scale=${4};
	declare result=$(bc -l <<< "scale=${scale}; ${value1} ${operation} ${value2}");
	echo -n $result;
}

# Test
# FrameScript.Math.Arithmetic.test
# Output: <string> Test result.
function FrameScript.Math.Arithmetic.test() {
	echo "Testing FrameScript.Math.Arithmetic";
	echo -e "\nFrameScript.Math.Arithmetic.calculate()";
	echo "2 + 3 = $(FrameScript.Math.Arithmetic.calculate 2 '+' 3 2)";
	echo "5.5 - 1.2 = $(FrameScript.Math.Arithmetic.calculate 5.5 '-' 1.2 2)";
	echo "4 * 2.5 = $(FrameScript.Math.Arithmetic.calculate 4 '*' 2.5 2)";
	echo "10 / 3 = $(FrameScript.Math.Arithmetic.calculate 10 '/' 3 0) (No decimal point)";
	echo "10 / 3 = $(FrameScript.Math.Arithmetic.calculate 10 '/' 3 2)";
	echo "10 % 3 = $(FrameScript.Math.Arithmetic.calculate 10 '%' 3 0)";
}

# end region