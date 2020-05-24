# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

export GIT_PAGER="LESSCHARSET=utf-8 less -R"

# =================================================================

if [ -f /sys/block/sda/device/vendor ]; then
        if [ `cat /sys/block/sda/device/vendor` = "VMware," ]; then
#                PS1="\033[32m[\u@\h(VM) \W]\\$\033[0m "
                PS1="[\u@\h(VM) \W] "
        fi
fi

# node.js
if [ -d ~/.nvm ]; then
        export NVM_DIR="$HOME/.nvm"
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
        [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

# =================================================================
alias runc=". ~/.bashrc"

alias utf8="export LANG=ja_JP.UTF-8"
alias euc="export LANG=ja_JP.eucJP"
alias sjis="export LANG=ja_JP.SJIS"
alias us="export LANG=en_US.UTF-8"

alias e='LANG=ja_JP.utf8 emacs'
alias ec='LANG=ja_JP.utf8 emacsclient -a '\'\'
alias sudo="sudo -E"
alias sum="sudo su -m"

alias md="mkdir"
alias ls="ls -cF"
alias top="top -cH"
alias pp="psql -h localhost -U postgres"

alias mvnNotest="mvn -Dmaven.test.skip=true"

alias d="docker"
alias dc="docker-compose"
alias k="kubectl"
