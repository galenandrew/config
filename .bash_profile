function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function reviseprompt {
	local       BLACK="\[\033[0;30m\]"
	local  BLACK_BOLD="\[\033[1;30m\]"
	local         RED="\[\033[0;31m\]"
	local    RED_BOLD="\[\033[1;31m\]"
	local       GREEN="\[\033[0;32m\]"
	local  GREEN_BOLD="\[\033[1;32m\]"
	local      YELLOW="\[\033[0;33m\]"
	local YELLOW_BOLD="\[\033[1;33m\]"
	local        BLUE="\[\033[0;34m\]"
	local   BLUE_BOLD="\[\033[1;34m\]"
	local        CYAN="\[\033[0;36m\]"
	local   CYAN_BOLD="\[\033[1;36m\]"
	local       WHITE="\[\033[0;37m\]"
	local  WHITE_BOLD="\[\033[1;37m\]"
	case $TERM in
		xterm*)
		TITLEBAR='\[\033]0;\u@\h:\w\007\]'
		;;
		*)
		TITLEBAR=""
		;;
	esac

PS1="
${TITLEBAR}\
$WHITE[\$(date +%H:%M)]\
$WHITE[$WHITE_BOLD\u:$CYAN\w$WHITE]$GREEN\$(parse_git_branch)\
$WHITE
\$ "
PS2='> '
PS4='+ '
}
reviseprompt

# Include shared profile script
if [ -f ~/.profile ]; then
	. ~/.profile
fi
