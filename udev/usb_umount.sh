#!/bin/bash
# USAGE: usb_umount.sh [dir name (device label...)]

/etc/udev/usb_umounter.sh $1 &
