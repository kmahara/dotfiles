# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

if [ -f /sys/block/sda/device/vendor ]; then
	if [ `cat /sys/block/sda/device/vendor` = "VMware," ]; then
		PS1="\033[32m[\u@\h(VM) \W]\\$\033[0m "
	fi
fi

#stty pass8 erase
#umask 002

# CVS setting
export CVSROOT=$USER@localhost:/home/CVS
export CVS_RSH=/usr/bin/ssh

# java support
export JAVA_HOME=/usr/java/default
PATH=$PATH:${JAVA_HOME}/bin

# wget
#setenv ftp_proxy http://192.168.1.250:3128/
#setenv http_proxy http://192.168.1.250:3128/

# snmp
export MIBS=ALL

# =================================================================
alias runc=". ~/.bashrc"

alias utf8="export LANG=ja_JP.UTF-8"
alias euc="export LANG=ja_JP.eucJP"
alias sjis="export LANG=ja_JP.SJIS"
alias us="export LANG=en_US.UTF-8"

alias e="LANG=ja_JP.utf8 emacs"
alias sum="sudo su -m"
# =================================================================
export PATH

