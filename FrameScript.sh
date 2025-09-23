#!/bin/bash
# Name: FrameScript.sh
# Purpose: FrameScript bash script
# --------------------------------

# region source

source ./FrameScript/Linux/Module/Math.sh;

# end region

# region FrameScript

function FrameScript.construct() {
	argument1=$1;
	FrameScript.application;
}

function FrameScript.application() {
	echo "Hello from FrameScript!";
	FrameScript.Math.Arithmetic.test;
}

FrameScript.construct;

# end region