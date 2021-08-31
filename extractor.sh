#!/usr/bin/env bash


[ ! -e "$1" ] && echo "Error. "\"$1\"" does not exist. " && exit 1

case $1 in
	*.tar)	tar xvf $1;;
	*.tar.bz2
	*.tar.gz
	*)
		echo "Unknown file";;
esac
