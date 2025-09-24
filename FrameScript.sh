#!/bin/bash
# Name: FrameScript.sh
# Purpose: FrameScript bash script
# --------------------------------

# region default

if [[ "${BASH_VERSINFO:-0}" -lt 4 ]]; then
	echo "Bash version 4.0 or higher is required.";
	exit 1;
fi

declare t1="$(realpath "${BASH_SOURCE[0]}")";
declare t2="$(dirname "${t1}")";
declare -A FrameScript=(
	["applicationName"]="FrameScript"
	["applicationEnvironment"]="Linux"
	["applicationVersion"]="0.0.1"
	["rootScriptAbsolutePath"]="${t1}"
	["rootDirectoryAbsolutePath"]="${t2}"
);
FrameScript+=(
	["latestVersionDirectoryAbsolutePath"]="${FrameScript["rootDirectoryAbsolutePath"]}/${FrameScript["applicationName"]}/${FrameScript["applicationEnvironment"]}/${FrameScript["applicationVersion"]}"
);

# end region

# region source

source "${FrameScript["latestVersionDirectoryAbsolutePath"]}/Module/Terminal/Application.sh";

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
		echo -e " ${TEXTSTYLE_SLOWBLINK}Options${TEXTSTYLE_RESET} ${TEXTSTYLE_BOLD_INVERTED} 0 = Exit | 1 = One | 2 = Two | 3 = Test | 4 = rsync ${TEXTSTYLE_RESET}";
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
		echo -en "Press any key to continue${TEXTSTYLE_SLOWBLINK}...${TEXTSTYLE_RESET} ";
		read -n 1 t1;
		clear;
	done
}

# Test
# FrameScript.test
# Output: <string> Test result.
function FrameScript.test() {
	echo -e "${TEXTSTYLE_BACKGROUND_GREEN} ${FrameScript["applicationName"]} testing is started. ${TEXTSTYLE_RESET}\n";
	echo -e "CLI argument values = ${FrameScript["cliArgumentValue"]}\nCLI arguments count = ${FrameScript["cliArgumentsCount"]}\n";
	FrameScript.Math.Arithmetic.test;
	echo -e "\n${TEXTSTYLE_BACKGROUND_GREEN} ${FrameScript["applicationName"]} testing is completed. ${TEXTSTYLE_RESET}";
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