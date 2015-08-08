#!/bin/bash
# USAGE: usb_umounter.sh [dir name (LaCie...)]

umount -l /media/$1
rmdir /media/$1
/etc/samba/load_usb_shares.sh