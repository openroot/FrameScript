#!/bin/bash
# Name: FrameScript.sh
# Purpose: FrameScript bash script
# --------------------------------

# region source

source "./FrameScript/Linux/Module/Terminal/Application.sh";

# end region

# region FrameScript

# Constructor
# FrameScript.construct
# Output: <void> No output.
function FrameScript.construct() {
	FrameScript.Terminal.Application.construct ${*};
	FrameScript.test;
}

# Testing
# FrameScript.test
# Output: <string> Test result.
function FrameScript.test() {
	echo -e "\n\n${TEXTSTYLE_BACKGROUND_GREEN} FrameScript testing is started. ${TEXTSTYLE_RESET}\n";
	echo -e "CLI argument values = ${FrameScript["cliArgumentValue"]}\nCLI arguments count = ${FrameScript["cliArgumentsCount"]}\n";
	FrameScript.Math.Arithmetic.test;
	echo -e "\n${TEXTSTYLE_BACKGROUND_GREEN} FrameScript testing is completed. ${TEXTSTYLE_RESET}\n";
}

FrameScript.construct ${*};

# end region