This is a bunch of scripts I wrote for my NAS (a Raspberry Pi) to enable auto-mounting of usb drives using a udev rule,
and automatically share the drive through SMB using samba.

Installation:

0.  make sure you have samba installed  
1.  clone the repo  
2.  cd to the repo  
3.  sudo mv udev/rules.d/10-usb_drives.rules /etc/udev/rules.d/  
4.  sudo mv udev/usb* /etc/udev/  
5.  sudo chmod +x /etc/udev/usb_*  
6.  sudo mv usr_local_sbin/cleanup_devices.sh /usr/local/sbin/  
7.  sudo chmod +x /usr/local/sbin/cleanup_devices.sh  
8.  sudo mv samba/load_usb_shares.sh /etc/samba/  
9.  sudo chmod +x /etc/samba/load_usb_shares.sh  
10. sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.orig  
11. sudo mv samba/smb.conf /etc/samba/smb.conf  
12. add the following line to /etc/rc.local: /usr/local/sbin/cleanup_devices.sh &  
13. sudo reboot  


References:
* http://www.axllent.org/docs/view/auto-mounting-usb-storage/  
* http://superuser.com/questions/53978/automatically-mount-external-drives-to-media-label-on-boot-without-a-user-logge  
* http://www.davidc.net/automatically-exporting-usb-drives-over-samba  
* http://askubuntu.com/questions/445735/why-do-my-udev-rules-run-if-i-use-udevadm-trigger-but-not-at-boot-time  
* http://www.linuxquestions.org/questions/linux-newbie-8/how-to-make-samba-read-updated-smb-conf-file-without-restarting-samba-873133/  
