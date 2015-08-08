#!/bin/bash
# USAGE: usb_mount.sh [dir name (device label...)] [device name (sdb...)] [mount_uptions]

/etc/udev/usb_mounter.sh $1 $2 $3 &
