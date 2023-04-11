#!/bin/sh
CH_III=$(find ~ -name ch-iii -type d 2>/dev/null | grep ch-iii -m 1)
cd $CH_III

TAB="    "
RESET="\e[0m"
BOLD="\e[1m"
DIM="\e[2m"
ITALIC="\e[3m"
UL="\e[4m"

BLACK="\e[30m"
BLACKB="\e[90m"
RED="\e[31m"
REDB="\e[91m"
GREEN="\e[32m"
GREENB="\e[92m"
YELLOW="\e[33m"
YELLOWB="\e[93m"
BLUE="\e[34m"
BLUEB="\e[94m"
PURPLE="\e[35m"
PURPLEB="\e[95m"
CYAN="\e[36m"
CYANB="\e[96m"
WHITE="\e[37m"
WHITEB="\e[97m"

DIR="${BOLD}${BLUEB}"
FILE="${RESET}${BOLD}"
EXEC="${RESET}${BOLD}${GREENB}"
END="${RESET}\n"

LOAD=""
SPIN1=""
SPIN2=""
SPIN3=""
SPIN4=""
SPIN5=""
SPIN6=""

alias printf="printf \"${RESET}\"; printf"
alias printmessage="printf \"${GREENB}[>]${RESET}: \"; printf"
alias printwarn="printf \"${YELLOW}[!]${RESET}: \"; printf"
alias printenter="printf \"${YELLOWB}[@]${RESET}: Entering${DIR}\"; printf"
alias printleave="printf \"${YELLOWB}[@]${RESET}: Leaving${DIR}\"; printf"
alias printerr="printf \"${RED}[!]${RESET}: \"; printf"
alias printprompt="printf \"${BOLD}[$]${RESET}: \"; printf"
alias printsudo="printf \"${BOLD}${BLUEB}[#]${RESET}: \"; printf"
alias read="read -p ${PURPLE}[?]${RESET}: "

mdcat README.md 2>/dev/null
type $0 1>/dev/null || printwarn "ch-iii.sh does not appear to be on your PATH! Should I add it? [Y/n]${END}" && $(read -n 1)
if [ $REPLY = "y" -o $REPLY = "Y" -o -z $REPLY ]; then
	printmessage "Installing at ${DIR}~/.local/bin/${RESET}..."
	install $(pwd)$0 ~/.local/bin
fi

