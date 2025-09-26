#!/bin/bash
# Name: Application.sh
# Purpose: Application bash script
# --------------------------------

# region source

source "${FrameScript["application,absolutePath,versionDirectory"]}/Module/Memory/Static.sh";
source "${FrameScript["application,absolutePath,versionDirectory"]}/Module/Memory/Quant.sh";
source "${FrameScript["application,absolutePath,versionDirectory"]}/Module/Math/Arithmetic.sh";

# end region

# region Application

# Constructor
# FrameScript.Terminal.Application.construct
# Output: <void> No output.
function FrameScript.Terminal.Application.construct() {
	FrameScript["cli,argument,count"]=${2};
	FrameScript["cli,argument,allValues"]="${3}";
	FrameScript["terminal,defaultShell"]="${SHELL}";
	FrameScript["terminal,type"]="${TERM}";
	FrameScript["terminal,bashVersion"]="${BASH_VERSINFO}";
	FrameScript["terminal,rootScript"]="$(basename "${1}")";
	FrameScript["terminal,rows"]=$(tput lines);
	FrameScript["terminal,columns"]=$(tput cols);
	FrameScript["terminal,hostname"]="${HOSTNAME}";
	FrameScript["terminal,user"]="${USER}";
	FrameScript.Memory.Static.construct;
	FrameScript.Memory.Quant.construct;
	FrameScript.Terminal.Application.initiate;
}

# Initialization
# FrameScript.Terminal.Application.initiate
# Output: <string> Initiation message.
function FrameScript.Terminal.Application.initiate() {
	declare -r welcomeMessage="${FrameScript["textStyle,backgroundBlue"]} FrameScript ${FrameScript["textStyle,reset"]}${FrameScript["textStyle,overlinedForegroundBlue"]} Terminal Access Point${FrameScript["textStyle,reset"]}";
	echo -en "${welcomeMessage}";
	echo -e "\n\n";
	FrameScript.Terminal.Application.information;
	echo -e "\n\n\n";
}

# Detailed information
# FrameScript.Terminal.Application.information
# Output: <string> About application.
function FrameScript.Terminal.Application.information() {
	FrameScript["terminal,rows"]=$(tput lines);
	FrameScript["terminal,columns"]=$(tput cols);
	echo -e " ${FrameScript["application,name"]} Information:";
	echo -e "  - Default Shell: ${FrameScript["terminal,defaultShell"]}";
	echo -e "  - Terminal Type: ${FrameScript["terminal,type"]}";
	echo -e "  - Bash Version: ${FrameScript["terminal,bashVersion"]}";
	echo -e "  - Root Script: ${FrameScript["terminal,rootScript"]}";
	echo -e "  - Terminal Size: ${FrameScript["terminal,rows"]} rows x ${FrameScript["terminal,columns"]} columns";
	echo -e "  - Hostname: ${FrameScript["terminal,hostname"]}";
	echo -e "  - User: ${FrameScript["terminal,user"]}";
	echo -e "  - CLI Arguments: ${FrameScript["cli,argument,count"]} argument(s) passed";
	if [[ ${FrameScript["cli,argument,count"]} -gt 0 ]]; then
		echo -e "    - All Values: ${FrameScript["cli,argument,allValues"]}";
	fi
}

# end region