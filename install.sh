#!/bin/sh

OS=`uname -s`

cp -a common/.[a-z]* ~

if [ $OS = Darwin ]; then
	cp -a mac/.[a-z]* ~
else
	cp -a linux/.[a-z]* ~
fi
