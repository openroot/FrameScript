#!/bin/bash
# Name: FrameScript.sh
# Purpose: FrameScript bash script
# --------------------------------

# region default

if [[ "${BASH_VERSINFO:-0}" -lt 4 ]]; then
	echo "Bash version 4.0 or higher is required.";
	exit 1;
fi

declare -A FrameScript;
FrameScript["application,name"]="FrameScript";
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
	FrameScript.Terminal.Application.construct "${*}";
	echo -e "\n";
}

# Execution
# FrameScript.execute
# Output: <string> Execution result.
function FrameScript.execute() {
	while :
	do
		echo -e " ${FrameScript["textStyle,slowBlink"]}Options${FrameScript["textStyle,reset"]} ${FrameScript["textStyle,boldInverted"]} 0 = Exit | 1 = One | 2 = Two | 3 = Test | 4 = rsync ${FrameScript["textStyle,reset"]}";
		echo -en "Please enter option [0|1|2|3|4]: ";
		read -n 1 operation;
		echo -e "\n\n";
		case $operation in
			0)
				# Exit the application
				break;
			;;
			1)
				echo "Option 1";
			;;
			2)
				echo "Option 2";
			;;
			3)
				FrameScript.test;
			;;
			4)
				rsync -av "/media/openroot/ProjectSpring53/ProjectSpring53" "/media/openroot/OriginalStore53/--additional/--rsync/--backup";
			;;
			*)
				echo "Unknown option";
			;;
		esac
		echo -e "\n";
		echo -en "Press any key to continue${FrameScript["textStyle,slowBlink"]}...${FrameScript["textStyle,reset"]} ";
		read -n 1 t1;
		unset "${t1}";
		clear;
	done
}

# Test
# FrameScript.test
# Output: <string> Test result.
function FrameScript.test() {
	echo -e "${FrameScript["textStyle,backgroundGreen"]} ${FrameScript["application,name"]} testing is started. ${FrameScript["textStyle,reset"]}\n";
	echo -e "CLI argument all values = ${FrameScript["cli,argument,allValues"]}\nCLI argument count = ${FrameScript["cli,argument,count"]}\n";
	FrameScript.Math.Arithmetic.test;
	echo -e "\n${FrameScript["textStyle,backgroundGreen"]} ${FrameScript["application,name"]} testing is completed. ${FrameScript["textStyle,reset"]}";
}

# Destructor
# FrameScript.destruct
# Output: <void> No output.
function FrameScript.destruct() {
	echo;
	exit 0;
}

FrameScript.construct "${*}";
FrameScript.execute;
FrameScript.destruct;

# end region