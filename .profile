###
# This file is included in both .bash_profile and .zprofile
###

# Load in sensitive data through .env file
if [ -f ~/.env ]; then
	. ~/.env
fi

# Alias's
if [ -f ~/.alias ]; then
	. ~/.alias
fi

# Default paths
export PATH="/Users/anturner/bin:$PATH"

# PEAR bin paths
export PATH="/Users/anturner/pear/bin:$PATH"

# Add RVM to PATH for scripting
# export PATH="$PATH:$HOME/.rvm/bin"

# Ruby Environment (rbenv)
if [ -d ~/.rbenv ]; then
	export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"
fi

# Node Version Manager
if [ -d ~/.nvm ]; then
	export NVM_DIR="/Users/anturner/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
fi

# Default Node Environment
export NODE_ENV="local"

# Postgres
if [ -d /Applications/Postgres.app ]; then
	export PATH=$PATH:"/Applications/Postgres.app/Contents/Versions/9.4/bin"
fi

# Boot2Docker
if [ $(boot2docker status) != "poweroff" ]; then
	eval "$(boot2docker shellinit)"
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
