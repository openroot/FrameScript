#!/bin/bash
# Name: Static.sh
# Purpose: Static bash script
# ---------------------------

# region Static

# Constructor
# FrameScript.Memory.Static.construct
# Output: <void> No output.
function FrameScript.Memory.Static.construct() {
	FrameScript.Memory.Static.textStyle;
}

# Textstyle with ANSI escape code
# FrameScript.Memory.Static.textStyle
# Output: <void> No output.
function FrameScript.Memory.Static.textStyle() {
	# Default
	declare -gr TEXTSTYLE_RESET='\033[0m';
	declare -gr TEXTSTYLE_BOLD='\033[1m';
	declare -gr TEXTSTYLE_ITALIC='\033[3m';
	declare -gr TEXTSTYLE_UNDERLINE='\033[4m';
	declare -gr TEXTSTYLE_SLOWBLINK='\033[5m';
	declare -gr TEXTSTYLE_INVERTED='\033[7m';
	declare -gr TEXTSTYLE_STRIKE='\033[9m';
	declare -gr TEXTSTYLE_DOUBLY_UNDERLINE='\033[21m';
	declare -gr TEXTSTYLE_FOREGROUND_BLACK='\033[30m';
	declare -gr TEXTSTYLE_FOREGROUND_RED='\033[31m';
	declare -gr TEXTSTYLE_FOREGROUND_GREEN='\033[32m';
	declare -gr TEXTSTYLE_FOREGROUND_YELLOW='\033[33m';
	declare -gr TEXTSTYLE_FOREGROUND_BLUE='\033[34m';
	declare -gr TEXTSTYLE_FOREGROUND_MAGENTA='\033[35m';
	declare -gr TEXTSTYLE_FOREGROUND_CYAN='\033[36m';
	declare -gr TEXTSTYLE_FOREGROUND_WHITE='\033[37m';
	declare -gr TEXTSTYLE_BACKGROUND_BLACK='\033[40m';
	declare -gr TEXTSTYLE_BACKGROUND_RED='\033[41m';
	declare -gr TEXTSTYLE_BACKGROUND_GREEN='\033[42m';
	declare -gr TEXTSTYLE_BACKGROUND_YELLOW='\033[43m';
	declare -gr TEXTSTYLE_BACKGROUND_BLUE='\033[44m';
	declare -gr TEXTSTYLE_BACKGROUND_MAGENTA='\033[45m';
	declare -gr TEXTSTYLE_BACKGROUND_CYAN='\033[46m';
	declare -gr TEXTSTYLE_BACKGROUND_WHITE='\033[47m';
	declare -gr TEXTSTYLE_OVERLINED='\033[53m';
	declare -gr TEXTSTYLE_FOREGROUND_BRIGHT_BLACK='\033[90m';
	declare -gr TEXTSTYLE_FOREGROUND_BRIGHT_RED='\033[91m';
	declare -gr TEXTSTYLE_FOREGROUND_BRIGHT_GREEN='\033[92m';
	declare -gr TEXTSTYLE_FOREGROUND_BRIGHT_YELLOW='\033[93m';
	declare -gr TEXTSTYLE_FOREGROUND_BRIGHT_BLUE='\033[94m';
	declare -gr TEXTSTYLE_FOREGROUND_BRIGHT_MAGENTA='\033[95m';
	declare -gr TEXTSTYLE_FOREGROUND_BRIGHT_CYAN='\033[96m';
	declare -gr TEXTSTYLE_FOREGROUND_BRIGHT_WHITE='\033[97m';
	declare -gr TEXTSTYLE_BACKGROUND_BRIGHT_BLACK='\033[100m';
	declare -gr TEXTSTYLE_BACKGROUND_BRIGHT_RED='\033[101m';
	declare -gr TEXTSTYLE_BACKGROUND_BRIGHT_GREEN='\033[102m';
	declare -gr TEXTSTYLE_BACKGROUND_BRIGHT_YELLOW='\033[103m';
	declare -gr TEXTSTYLE_BACKGROUND_BRIGHT_BLUE='\033[104m';
	declare -gr TEXTSTYLE_BACKGROUND_BRIGHT_MAGENTA='\033[105m';
	declare -gr TEXTSTYLE_BACKGROUND_BRIGHT_CYAN='\033[106m';
	declare -gr TEXTSTYLE_BACKGROUND_BRIGHT_WHITE='\033[107m';
	# Combined
	declare -gr TEXTSTYLE_BOLD_INVERTED='\033[1;7m';
	# Custom
	declare -gr TEXTSTYLE_OVERLINED_FOREGROUND_BLUE='\033[53;34m';
}

# end region