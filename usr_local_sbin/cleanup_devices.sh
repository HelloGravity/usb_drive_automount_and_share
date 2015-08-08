#!/bin/bash
# USAGE: cleanup_devices.sh
# run as root

find /media -maxdepth 1 ! -path /media -type d -exec bash -c "test $(stat /media -c "%d") == \$(stat {} -c "%d") && rm -rf {}" \;
/etc/samba/load_usb_shares.sh