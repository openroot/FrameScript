#!/bin/bash
# Name: Static.sh
# Purpose: Static bash script
# ---------------------------

# region Static

# Constructor
# FrameScript.Module.Memory.Static.construct
# Output: <void> No output.
function FrameScript.Module.Memory.Static.construct() {
	FrameScript.Module.Memory.Static.textStyle;
}

# Text-style with ANSI escape code
# FrameScript.Module.Memory.Static.textStyle
# Output: <void> No output.
function FrameScript.Module.Memory.Static.textStyle() {
	# Default
	FrameScript["textStyle,reset"]='\033[0m';
	FrameScript["textStyle,bold"]='\033[1m';
	FrameScript["textStyle,italic"]='\033[3m';
	FrameScript["textStyle,underline"]='\033[4m';
	FrameScript["textStyle,slowBlink"]='\033[5m';
	FrameScript["textStyle,inverted"]='\033[7m';
	FrameScript["textStyle,strike"]='\033[9m';
	FrameScript["textStyle,doublyUnderline"]='\033[21m';
	FrameScript["textStyle,foregroundBlack"]='\033[30m';
	FrameScript["textStyle,foregroundRed"]='\033[31m';
	FrameScript["textStyle,foregroundGreen"]='\033[32m';
	FrameScript["textStyle,foregroundYellow"]='\033[33m';
	FrameScript["textStyle,foregroundBlue"]='\033[34m';
	FrameScript["textStyle,foregroundMagenta"]='\033[35m';
	FrameScript["textStyle,foregroundCyan"]='\033[36m';
	FrameScript["textStyle,foregroundWhite"]='\033[37m';
	FrameScript["textStyle,backgroundBlack"]='\033[40m';
	FrameScript["textStyle,backgroundRed"]='\033[41m';
	FrameScript["textStyle,backgroundGreen"]='\033[42m';
	FrameScript["textStyle,backgroundYellow"]='\033[43m';
	FrameScript["textStyle,backgroundBlue"]='\033[44m';
	FrameScript["textStyle,backgroundMagenta"]='\033[45m';
	FrameScript["textStyle,backgroundCyan"]='\033[46m';
	FrameScript["textStyle,backgroundWhite"]='\033[47m';
	FrameScript["textStyle,overlined"]='\033[53m';
	FrameScript["textStyle,foregroundBrightBlack"]='\033[90m';
	FrameScript["textStyle,foregroundBrightRed"]='\033[91m';
	FrameScript["textStyle,foregroundBrightGreen"]='\033[92m';
	FrameScript["textStyle,foregroundBrightYellow"]='\033[93m';
	FrameScript["textStyle,foregroundBrightBlue"]='\033[94m';
	FrameScript["textStyle,foregroundBrightMagenta"]='\033[95m';
	FrameScript["textStyle,foregroundBrightCyan"]='\033[96m';
	FrameScript["textStyle,foregroundBrightWhite"]='\033[97m';
	FrameScript["textStyle,backgroundBrightBlack"]='\033[100m';
	FrameScript["textStyle,backgroundBrightRed"]='\033[101m';
	FrameScript["textStyle,backgroundBrightGreen"]='\033[102m';
	FrameScript["textStyle,backgroundBrightYellow"]='\033[103m';
	FrameScript["textStyle,backgroundBrightBlue"]='\033[104m';
	FrameScript["textStyle,backgroundBrightMagenta"]='\033[105m';
	FrameScript["textStyle,backgroundBrightCyan"]='\033[106m';
	FrameScript["textStyle,backgroundBrightWhite"]='\033[107m';
	# Combined
	FrameScript["textStyle,boldInverted"]='\033[1;7m';
	# Custom
	FrameScript["textStyle,overlinedForegroundBlue"]='\033[53;34m';
}

# end region