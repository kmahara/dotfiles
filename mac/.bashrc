export LANG=ja_JP.UTF-8
#export http_proxy=http://172.17.0.3:3128

## ----
## complete

if [ -f /usr/local/bin/brew ]; then
	if [ -f $(brew --prefix)/etc/bash_completion ]; then
	  . $(brew --prefix)/etc/bash_completion
	fi

	complete -o default vi
fi


## ----
## path

PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# php
[ -d /usr/local/opt/php@7.3/bin ] && PATH="/usr/local/opt/php@7.3/bin:$PATH"

# go
[ -d ~/go/bin ] && PATH="~/go/bin:$PATH"

# dotnet
[ -d /usr/local/share/dotnet ] && PATH="$PATH:/usr/local/share/dotnet"

# node.js
if [ -d ~/.nvm ]; then
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

export PATH

## ----
## alias 

#alias use_proxy="export http_proxy=http://172.17.0.3:3128"
alias pp="psql -h localhost -U postgres"
alias md="mkdir"
alias ls="ls -cF"

alias e='LANG=ja_JP.utf8 emacs'
alias runc=". ~/.bashrc"

alias d="docker"
alias dc="docker-compose"
alias k="kubectl"
