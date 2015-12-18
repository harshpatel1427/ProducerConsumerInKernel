#!/bin/sh
PATH=$PATH:/sbin/
set -x
# WARNING: this script doesn't check for errors, so you have to enhance it in case any of the commands
# below fail.
rmmod sys_submitjob
insmod sys_submitjob.ko
