#!/bin/sh


command="$(setxkbmap -print -verbose 10 | awk '/^layout:/{print $2}')"

if [[ $command = 'us' ]]; then
	sudo setxkbmap -layout bs
	echo "Setting Bosnian layout"
else
	sudo setxkbmap -layout us
	echo "Setting US layout"
fi
