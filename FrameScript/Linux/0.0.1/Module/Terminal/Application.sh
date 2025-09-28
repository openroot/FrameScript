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
# FrameScript.Module.Terminal.Application.construct
# Output: <void> No output.
function FrameScript.Module.Terminal.Application.construct() {
	FrameScript["terminal,defaultShell"]="${SHELL}";
	FrameScript["terminal,type"]="${TERM}";
	FrameScript["terminal,bashVersion"]="${BASH_VERSINFO}";
	read FrameScript["terminal,rows"] FrameScript["terminal,columns"] < <(stty size);
	FrameScript["terminal,hostname"]="${HOSTNAME}";
	FrameScript["terminal,user"]="${USER}";
	FrameScript["application,rootScript"]="$(basename "${1}")";
	FrameScript["application,cli,argument,count"]=${2};
	FrameScript["application,cli,argument,allValues"]="${3}";
	FrameScript.Module.Memory.Static.construct;
	FrameScript.Module.Memory.Quant.construct;
	FrameScript.Module.Terminal.Application.initiate;
}

# Initialisation
# FrameScript.Module.Terminal.Application.initiate
# Output: <string> Initiation message.
function FrameScript.Module.Terminal.Application.initiate() {
	declare -r welcomeMessage="${FrameScript["textStyle,backgroundBlue"]} ${FrameScript["application,name"]} ${FrameScript["textStyle,reset"]}${FrameScript["textStyle,overlinedForegroundBlue"]} ${FrameScript["application,description"]}${FrameScript["textStyle,reset"]}";
	echo -en "${welcomeMessage}";
	echo -e "\n\n";
	FrameScript.Module.Terminal.Application.information;
	echo -e "\n\n\n";
}

# Detailed information
# FrameScript.Module.Terminal.Application.information
# Output: <string> About application.
function FrameScript.Module.Terminal.Application.information() {
	read FrameScript["terminal,rows"] FrameScript["terminal,columns"] < <(stty size);
	echo -e " ${FrameScript["application,name"]} Information:";
	echo -e "  - Name: ${FrameScript["application,name"]}";
	echo -e "  - Description: ${FrameScript["application,description"]}";
	echo -e "  - Default Shell: ${FrameScript["terminal,defaultShell"]}";
	echo -e "  - Terminal Type: ${FrameScript["terminal,type"]}";
	echo -e "  - Bash Version: ${FrameScript["terminal,bashVersion"]}";
	echo -e "  - Terminal Size: ${FrameScript["terminal,rows"]} rows x ${FrameScript["terminal,columns"]} columns";
	echo -e "  - Hostname: ${FrameScript["terminal,hostname"]}";
	echo -e "  - User: ${FrameScript["terminal,user"]}";
	echo -e "  - Root Script: ${FrameScript["application,rootScript"]}";
	echo -e "  - CLI Arguments: ${FrameScript["application,cli,argument,count"]} argument(s) passed";
	if [[ ${FrameScript["application,cli,argument,count"]} -gt 0 ]]; then
		echo -e "    - All Values: ${FrameScript["application,cli,argument,allValues"]}";
	fi
}

# end region