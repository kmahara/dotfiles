# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f ~/.bash_local ]; then
	. ~/.bash_local
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

#stty pass8 erase
#umask 002

# java support
#export JAVA_HOME=/usr/java/default
#PATH=$PATH:${JAVA_HOME}/bin

# wget
#setenv ftp_proxy http://192.168.1.250:3128/
#setenv http_proxy http://192.168.1.250:3128/

# snmp
#export MIBS=ALL

# less
export LESS="-X -R"
# =================================================================
export PATH

