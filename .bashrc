# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# =================================================================

if [ -f /sys/block/sda/device/vendor ]; then
        if [ `cat /sys/block/sda/device/vendor` = "VMware," ]; then
#                PS1="\033[32m[\u@\h(VM) \W]\\$\033[0m "
                PS1="[\u@\h(VM) \W] "
        fi
fi

# =================================================================
alias runc=". ~/.bashrc"

alias utf8="export LANG=ja_JP.UTF-8"
alias euc="export LANG=ja_JP.eucJP"
alias sjis="export LANG=ja_JP.SJIS"
alias us="export LANG=en_US.UTF-8"

alias e="LANG=ja_JP.utf8 emacs"
alias sudo="sudo -E"
alias sum="sudo su -m"

alias md="mkdir"
