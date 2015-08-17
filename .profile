###
# This file is included in both .bash_profile and .zprofile
###

# Load in sensitive data through .env file
if [ -f $HOME/.env ]; then
	. $HOME/.env
fi

# Alias's
if [ -f $HOME/.alias ]; then
	. $HOME/.alias
fi

# Default paths
export PATH="$HOME/bin:$PATH"

# Ruby Environment (rbenv)
if [ -d $HOME/.rbenv ]; then
	export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"
fi

# Node Version Manager
if [ -d $HOME/.nvm ]; then
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
	[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion
fi

# Default Node Environment
export NODE_ENV="local"

# Postgres
if [ -d /Applications/Postgres.app ]; then
	export PATH=$PATH:"/Applications/Postgres.app/Contents/Versions/9.4/bin"
fi

# VSCode (Visual Studio Code)
code () {
	if [[ $# = 0 ]]
	then
		open -a "Visual Studio Code"
	else
		[[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
		open -a "Visual Studio Code" --args "$F"
	fi
}
