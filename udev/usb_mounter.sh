#!/bin/bash
# USAGE: usb_mounter.sh [dir name (device label)] [device name (sdb...)] [mount_uptions]

while [ -z "$(mount | grep 'dev/root' | grep -E '\(.*rw.*\)')" ]; do
    sleep 1
done
mkdir -p /media/$1
mount -o $3 /dev/$2 /media/$1
/etc/samba/load_usb_shares.sh