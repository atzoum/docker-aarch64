#!/bin/sh
export NODE_HOSTNAME=`cat /etc/hostname`
exec telegraf
