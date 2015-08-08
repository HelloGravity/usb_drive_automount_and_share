#!/bin/bash
# USAGE: load_usb_shares.sh
# should be run under root

# smb.conf should include the line:
# include = /etc/samba/usb_shares.conf


# fill the shares
truncate -s 0 /etc/samba/usb_shares.conf
find /media -maxdepth 1 ! -path /media -type d -exec bash -c "echo [\$(basename {})]$'\n\t'path = /media/\$(basename {})" >> /etc/samba/usb_shares.conf \; 

# from 'man smbd':
# Sending the smbd a SIGHUP will cause it to reload its smb.conf configuration file within a short period of time.
killall -HUP smbd
