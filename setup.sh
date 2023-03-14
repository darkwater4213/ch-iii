#!/bin/sh
# ANSI colors
export ANSI_RESET="\033[0m"
export ANSI_COLOR="\033[49m"
export ANSI_BLACK="\033[30m"
export ANSI_BLACKB="\033[90m"
export ANSI_RED="\033[31m"
export ANSI_REDB="\033[91m"
export ANSI_GREEN="\033[32m"
export ANSI_GREENB="\033[92m"
export ANSI_YELLOW="\033[33m"
export ANSI_YELLOWB="\033[93m"
export ANSI_BLUE="\033[34m"
export ANSI_BLUEB="\033[94m"
export ANSI_PURPLE="\033[35m"
export ANSI_PURPLEB="\033[95m"
export ANSI_CYAN="\033[36m"
export ANSI_CYANB="\033[96m"
export ANSI_WHITE="\033[37m"
export ANSI_WHITEB="\033[97m"

# ANSI text
export ANSI_BOLD="\033[1m"
export ANSI_BOLD_="\033[21m"
export ANSI_DIM="\033[2m"
export ANSI_DIM_="\033[22m"
export ANSI_ITALIC="\033[3m"
export ANSI_ITALIC_="\033[23m"
export ANSI_UL="\033[4m"
export ANSI_UL_="\033[24m"

# print* macros
alias printm="printf \"    ${ANSI_GREEN}[>]${ANSI_COLOR}: \""
alias printe="printf \"    ${ANSI_RED}[!]${ANSI_COLOR}: \""
alias printh="printf \"    ${ANSI_BLUE}[#]${ANSI_COLOR}: \""
alias printp="printf \"    ${ANSI_PURPLE}[?]${ANSI_COLOR}: \""

# cd ch-iii if $1="--help"; then
# printf
# fi

# # update the package cache + get sudo
# printf "This script will install the following packages:\n\n\tgit-all code brave-keyring brave-browser\n\nThis will require sudo access.\nIf you don't have the sudo password, please contact your system administrator.\n\nApproximately 500MB of disk space wil be used,\nbut don't count on less than 750MB.\n"
# read -p "Are you sure you want to do this [ynaq]? " -N 1 -t 5
# if (( $? > 128 )); then
# printf "\n\nE: read timed out. Exiting.\n"
# exit 2
# fi
# if [ $REPLY='n' -o $REPLY='a' -o $REPLY='q' ]; then
# printf "\n\nAbort.\nE: Operation canceled.\n"
# exit 1
# fi
# sudo apt update
# sudo apt-get install git-all

# # get VSCode
# sudo apt-get install wget gpg
# wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
# sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
# sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
# rm -f packages.microsoft.gpg

# # update the package cache and install
# sudo apt install apt-transport-https
# sudo apt update
# sudo apt install code

# # install brave
# # sudo apt install apt-transport-https curl
# # sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
# # echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
# # sudo apt update
# # sudo apt install brave-browser
