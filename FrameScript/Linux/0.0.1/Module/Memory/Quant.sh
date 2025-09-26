#!/bin/bash
# Name: Quant.sh
# Purpose: Quant bash script
# --------------------------

# region Quant

# Constructor
# FrameScript.Memory.Quant.construct
# Output: <void> No output.
function FrameScript.Memory.Quant.construct() {
	FrameScript.Memory.Quant.englishLetter;
}

# English letter with decimal code
# FrameScript.Memory.Quant.englishLetter
# Output: <void> No output.
function FrameScript.Memory.Quant.englishLetter() {
	FrameScript["englishLetter,a"]=3;
	FrameScript["englishLetter,b"]=2;
	FrameScript["englishLetter,c"]=3;
	FrameScript["englishLetter,d"]=3;
	FrameScript["englishLetter,e"]=3;
	FrameScript["englishLetter,f"]=5;
	FrameScript["englishLetter,g"]=3;
	FrameScript["englishLetter,h"]=4;
	FrameScript["englishLetter,i"]=3;
	FrameScript["englishLetter,j"]=5;
	FrameScript["englishLetter,k"]=5;
	FrameScript["englishLetter,l"]=7;
	FrameScript["englishLetter,m"]=5;
	FrameScript["englishLetter,n"]=5;
	FrameScript["englishLetter,o"]=5;
	FrameScript["englishLetter,p"]=5;
	FrameScript["englishLetter,q"]=4;
	FrameScript["englishLetter,r"]=4;
	FrameScript["englishLetter,s"]=5;
	FrameScript["englishLetter,t"]=3;
	FrameScript["englishLetter,u"]=5;
	FrameScript["englishLetter,v"]=2;
	FrameScript["englishLetter,w"]=7;
	FrameScript["englishLetter,x"]=1;
	FrameScript["englishLetter,y"]=6;
	FrameScript["englishLetter,z"]=6;
	FrameScript["englishLetter,A"]=3;
	FrameScript["englishLetter,B"]=2;
	FrameScript["englishLetter,C"]=3;
	FrameScript["englishLetter,D"]=3;
	FrameScript["englishLetter,E"]=3;
	FrameScript["englishLetter,F"]=5;
	FrameScript["englishLetter,G"]=3;
	FrameScript["englishLetter,H"]=4;
	FrameScript["englishLetter,I"]=3;
	FrameScript["englishLetter,J"]=5;
	FrameScript["englishLetter,K"]=5;
	FrameScript["englishLetter,L"]=7;
	FrameScript["englishLetter,M"]=5;
	FrameScript["englishLetter,N"]=5;
	FrameScript["englishLetter,O"]=5;
	FrameScript["englishLetter,P"]=5;
	FrameScript["englishLetter,Q"]=4;
	FrameScript["englishLetter,R"]=4;
	FrameScript["englishLetter,S"]=5;
	FrameScript["englishLetter,T"]=3;
	FrameScript["englishLetter,U"]=5;
	FrameScript["englishLetter,V"]=2;
	FrameScript["englishLetter,W"]=7;
	FrameScript["englishLetter,X"]=1;
	FrameScript["englishLetter,Y"]=6;
	FrameScript["englishLetter,Z"]=6;
}

# Display English letter with decimal code
# FrameScript.Memory.Quant.displayEnglishLetter
# Output: <string> English letter decimal code.
function FrameScript.Memory.Quant.displayEnglishLetter() {
	for letter in {a..z} {A..Z}; do
		echo "${letter}: ${FrameScript["englishLetter,${letter}"]}";
	done
}

# end region