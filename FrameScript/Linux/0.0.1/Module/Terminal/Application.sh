#!/bin/bash
# Name: Application.sh
# Purpose: Application bash script
# --------------------------------

# region source

source "${FrameScript["application,absolutePath,versionDirectory"]}/Module/Memory/Static.sh";
source "${FrameScript["application,absolutePath,versionDirectory"]}/Module/Math/Arithmetic.sh";

# end region

# region Application

# Constructor
# FrameScript.Terminal.Application.construct
# Output: <void> No output.
function FrameScript.Terminal.Application.construct() {
	declare -gA FrameScript["cli,argument,allValues"]="${*}";
	declare -gA FrameScript["cli,argument,count"]=${#};
	FrameScript.Memory.Static.construct;
	FrameScript.Terminal.Application.initiate;
}

# Initialization
# FrameScript.Terminal.Application.initiate
# Output: <string> Initiation result.
function FrameScript.Terminal.Application.initiate() {
	declare -r welcomeMessage="${FrameScript["textStyle,backgroundBlue"]} FrameScript ${FrameScript["textStyle,reset"]}${FrameScript["textStyle,overlinedForegroundBlue"]} Terminal Access Point${FrameScript["textStyle,reset"]}";
	echo -en "${welcomeMessage}";
}

# end region