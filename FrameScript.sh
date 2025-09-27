#!/bin/bash
# Name: FrameScript.sh
# Purpose: FrameScript bash script
# --------------------------------

# region default

if [[ ${BASH_VERSINFO:-0} -lt 4 ]]; then
	echo "Bash version 4.0 or higher is required.";
	exit 1;
fi

declare -A FrameScript;
FrameScript["application,name"]="FrameScript";
FrameScript["application,description"]="Terminal Access Point";
FrameScript["application,environment"]="Linux";
FrameScript["application,version"]="0.0.1";
FrameScript["application,absolutePath,rootScript"]="$(realpath "${BASH_SOURCE[0]}")";
FrameScript["application,absolutePath,rootDirectory"]="$(dirname "${FrameScript["application,absolutePath,rootScript"]}")";
FrameScript["application,absolutePath,versionDirectory"]="${FrameScript["application,absolutePath,rootDirectory"]}/${FrameScript["application,name"]}/${FrameScript["application,environment"]}/${FrameScript["application,version"]}";

# end region

# region source

source "${FrameScript["application,absolutePath,versionDirectory"]}/Module/Terminal/Application.sh";

# end region

# region FrameScript

# Constructor
# FrameScript.construct
# Output: <void> No output.
function FrameScript.construct() {
	clear;
	FrameScript.Module.Terminal.Application.construct "${1}" ${2} "${3}";
	echo -e "\n";
}

# Execution
# FrameScript.execute
# Output: <string> Executional value.
function FrameScript.execute() {
	declare t1=-1;
	declare t2=" ${FrameScript["textStyle,slowBlink"]}Options${FrameScript["textStyle,reset"]} ${FrameScript["textStyle,boldInverted"]} 0 = Exit | 1 = rsync | 2 = Two | 3 = Three | 4 = Sample | 5 = Information ${FrameScript["textStyle,reset"]}";
	declare t3="Please enter option [0|1|2|3|4|5]: ";
	while :
	do
		echo -e "${t2}";
		if [[ "${t1}" -eq -1 ]] 2>/dev/null; then
			echo -en "${t3}";
			read -n 1 operation;
			clear;
			echo -e "${t2}";
		else
			operation="${t1}";
		fi
		echo -en "${t3}${operation}";
		echo -e "\n\n";
		case $operation in
			0)
				break;
			;;
			1)
				declare rsyncSourceDirectory="/media/openroot/ProjectSpring53/ProjectSpring53";
				declare rsyncDestinationDirectory="/media/openroot/OriginalStore53/--additional/--rsync/Backup";
				if [[ -d "${rsyncSourceDirectory}" && -d "${rsyncDestinationDirectory}" ]]; then
					echo -e "${FrameScript["textStyle,foregroundGreen"]} rsync from ${rsyncSourceDirectory} to ${rsyncDestinationDirectory} is started. ${FrameScript["textStyle,reset"]}\n";
					rsync -av --delete "${rsyncSourceDirectory}" "${rsyncDestinationDirectory}";
					echo -e "\n${FrameScript["textStyle,foregroundGreen"]} rsync from ${rsyncSourceDirectory} to ${rsyncDestinationDirectory} is completed. ${FrameScript["textStyle,reset"]}";
				else
					echo -e "${FrameScript["textStyle,foregroundRed"]} Source or Destination directory does not exist for rsync. ${FrameScript["textStyle,reset"]}";
					echo -e "  - Source: ${rsyncSourceDirectory}";
					echo -e "  - Destination: ${rsyncDestinationDirectory}";
				fi
			;;
			2)
				echo "Option 2";
			;;
			3)
				echo "Option 3";
			;;
			4)
				FrameScript.sample;
			;;
			5)
				FrameScript.Module.Terminal.Application.information;
			;;
			*)
				echo "Unknown option";
			;;
		esac
		echo -e "\n";
		read -n 1 t1;
		clear;
	done
}

# Sampling
# FrameScript.sample
# Output: <string> FrameScript samples.
function FrameScript.sample() {
	echo -e "${FrameScript["textStyle,backgroundGreen"]} ${FrameScript["application,name"]} sampling is started. ${FrameScript["textStyle,reset"]}\n";
	FrameScript.Module.Math.Arithmetic.sample;
	echo -e "\n${FrameScript["textStyle,backgroundGreen"]} ${FrameScript["application,name"]} sampling is completed. ${FrameScript["textStyle,reset"]}";
}

# Destructor
# FrameScript.destruct
# Output: <void> No output.
function FrameScript.destruct() {
	echo;
	exit 0;
}

FrameScript.construct "${0}" ${#} "${*}";
FrameScript.execute;
FrameScript.destruct;

# end region