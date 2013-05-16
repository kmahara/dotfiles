setenv LANG ja_JP.UTF-8
if (! $?prompt) then
	setenv LANG C
	exit
endif
if (! $?TERM) then
  setenv LANG C
endif

# Program path
set path=( ~/bin /usr/sbin /sbin /usr/bin /usr/sbin /usr/local/bin /bin /usr/X11R6/bin )
set path=( $path /usr/kerberos/bin /usr/kerberos/sbin )

#if ( -d /usr/pgsql-9.0/bin ) set path=( $path /usr/pgsql-9.0/bin )
if ( -d /opt/roi/bin ) set path=( $path /opt/roi/bin )

# Shell setting
set history=100
set savehist=100
set prompt=`whoami`'@%M:[\!]%# '
# for VM
if ( `cat /sys/block/sda/device/vendor` == "VMware," ) then
	set prompt='%{\033[32m%}'`whoami`'@%m(VM):[\!]%#%{\033[0m%} '
endif
set cdpath=(~)
set watch = (1 any any)

stty pass8 erase 
umask 002

setenv EDITOR vi
setenv JLESSCHARSET 

# CVS setting
#setenv CVSROOT $USER@localhost:/home/CVS
setenv CVSROOT gate.fancrew.net:/home/CVS
setenv CVS_RSH /usr/bin/ssh

# java support
### Sun java 1.4.0
setenv JAVA_HOME /usr/java/default
#setenv CLASSPATH .:${JAVA_HOME}/lib/rt.jar
set path=( $path ${JAVA_HOME}/bin )

# wget
#setenv ftp_proxy http://192.168.1.250:3128/
#setenv http_proxy http://192.168.1.250:3128/

source ~/.alias

unset autologout

setenv MIBS ALL
