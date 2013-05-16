# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin


[ -d /opt/roi/bin ] && PATH=$PATH:/opt/roi/bin

. ~/.bash_alias


if [ `cat /sys/block/sda/device/vendor` = "VMware," ]; then
	PS1="\033[32m[\u@\h(VM) \W]\\$\033[0m "
fi

#stty pass8 erase
#umask 002

# CVS setting
setenv CVSROOT $USER@localhost:/home/CVS
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
export PATH

alias pp="psql -h dbserver -U postgres fancrew_product"
