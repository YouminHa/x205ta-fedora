#!/bin/sh
PATH=/sbin:/usr/sbin:/bin:/usr/bin

case "$1" in
	pre)
		#code execution BEFORE sleeping/hibernating/suspending
	;;
	post)
		#code execution AFTER resuming
		sudo rmmod elan_i2c && sudo modprobe elan_i2c
	;;
esac

exit 0

