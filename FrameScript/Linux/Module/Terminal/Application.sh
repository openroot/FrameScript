#!/bin/bash
# Name: Application.sh
# Purpose: Application bash script
# --------------------------------

# region source

source "./FrameScript/Linux/Module/Memory/Static.sh";
source "./FrameScript/Linux/Module/Math/Arithmetic.sh";

# end region

# region Application

# Constructor
# FrameScript.Terminal.Application.construct
# Output: <void> No output.
function FrameScript.Terminal.Application.construct() {
	declare -gA FrameScript["cliArgumentValue"]=${*};
	declare -gA FrameScript["cliArgumentsCount"]=${#};
	FrameScript.Memory.Static.construct;
	FrameScript.Terminal.Application.initiate;
}

# Initialization
# FrameScript.Terminal.Application.initiate
# Output: <string> Initiation result.
function FrameScript.Terminal.Application.initiate() {
	declare -r welcomeMessage="${TEXTSTYLE_BACKGROUND_BLUE} FrameScript ${TEXTSTYLE_RESET}${TEXTSTYLE_OVERLINED_FOREGROUND_BLUE} Terminal Access Point${TEXTSTYLE_RESET}";
	echo -en ${welcomeMessage};
}

# end region