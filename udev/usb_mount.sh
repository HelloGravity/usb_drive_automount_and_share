#!/bin/bash
# USAGE: usb_mount.sh [dir name (LaCie...)] [device name (sdb...)] [mount_uptions]

/etc/udev/usb_mounter.sh $1 $2 $3 &