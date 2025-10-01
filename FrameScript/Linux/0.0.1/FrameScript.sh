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
FrameScript["application,absolutePath,errorFile"]="${FrameScript["application,absolutePath,rootDirectory"]}/FrameScript/error/error.txt";
FrameScript["application,errorFileSizeLimit"]=1048576; # In bytes (1 MB).

# end region

# region source

source "${FrameScript["application,absolutePath,rootDirectory"]}/Module/Terminal/Application.sh";

# end region

# region FrameScript

# Constructor
# FrameScript.construct
# Output: <void> No output.
function FrameScript.construct() {
	clear;
	FrameScript.manageErrorFile;
	FrameScript.validateEnvironment;
	FrameScript.Module.Terminal.Application.construct "${1}" ${2} "${3}";
	echo -e "\n";
}

# Error file management
# FrameScript.manageErrorFile
# Output: <void> No output.
function FrameScript.manageErrorFile() {
	# Create new file for errors if its size exceeds the provided limit.
	declare errorFile="${FrameScript["application,absolutePath,errorFile"]}";
	if [[ -f "${errorFile}" ]]; then
		declare -i fileSize=$(stat --format="%s" "${errorFile}");
		if [[ ${fileSize} -gt ${FrameScript["application,errorFileSizeLimit"]} ]]; then
			declare timestamp="$(date "+%Y%m%d_%H%M%S_%6N_%Z")";
			declare newName="${errorFile%.*}_${timestamp}.txt";
			mv "${errorFile}" "${newName}";
		fi
	fi
}

# Error handling
# FrameScript.error "<message>" <code>
# Parameter1: <string> Error message.
# Parameter2: <integer> Error code. 0 indicates no error.
# Output: <string> Error message to the standard error output and stops execution.
function FrameScript.error() {
	declare code=${1};
	declare message="${2}";
	if [[ ${code} -ne 0 ]]; then
		declare timestamp="$(date "+%A, %Y-%m-%d %H:%M:%S.%6N %Z")";
		declare errorString="Timestamp: ${timestamp}\nCode: ${code}\nError:\n${message}\n";
		echo -e "${errorString}" >&2;
		echo -e "${errorString}" >> "${FrameScript["application,absolutePath,errorFile"]}";
		exit ${code};
	fi
}

# Environment validation
# FrameScript.validateEnvironment
# Output: <void> No output.
function FrameScript.validateEnvironment() {
	declare packageName="bc";
	! dpkg -s "${packageName}" &>/dev/null && FrameScript.error 1 "Package \"${packageName}\" is not installed.";
}

# Execution
# FrameScript.execute
# Output: <string> Executional value.
function FrameScript.execute() {
	declare t1=-1;
	declare t2=" ${FrameScript["textStyle,slowBlink"]}Options${FrameScript["textStyle,reset"]} ${FrameScript["textStyle,boldInverted"]} 0 = Exit | 1 = One | 2 = Two | 3 = Three | 4 = Sample | 5 = Information ${FrameScript["textStyle,reset"]}";
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
		case ${operation} in
			0)
				break;
			;;
			1)
				echo "Option 1";
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