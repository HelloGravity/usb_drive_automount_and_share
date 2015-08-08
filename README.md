This is a bunch of scripts I wrote for my NAS (a Raspberry Pi) to enable auto-mounting of usb drives using a udev rule,
and automatically share the drive through SMB using samba.

Installation:
```bash
* make sure you have samba installed  
* clone the repo  
* cd to the repo  

sudo mv udev/rules.d/10-usb_drives.rules /etc/udev/rules.d/  
sudo mv udev/usb* /etc/udev/  
sudo chmod +x /etc/udev/usb_*  
sudo mv usr_local_sbin/cleanup_devices.sh /usr/local/sbin/  
sudo chmod +x /usr/local/sbin/cleanup_devices.sh  
sudo mv samba/load_usb_shares.sh /etc/samba/  
sudo chmod +x /etc/samba/load_usb_shares.sh  
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.orig  
sudo mv samba/smb.conf /etc/samba/smb.conf  

add the following line to /etc/rc.local: 
   /usr/local/sbin/cleanup_devices.sh &  
   
sudo reboot  
```

Caution: 
The smb.conf provided here sets the drives to be publicly accessible without any password,
and guests access the files in the shares as root.



References:
* http://www.axllent.org/docs/view/auto-mounting-usb-storage/  
* http://superuser.com/questions/53978/automatically-mount-external-drives-to-media-label-on-boot-without-a-user-logge  
* http://www.davidc.net/automatically-exporting-usb-drives-over-samba  
* http://askubuntu.com/questions/445735/why-do-my-udev-rules-run-if-i-use-udevadm-trigger-but-not-at-boot-time  
* http://www.linuxquestions.org/questions/linux-newbie-8/how-to-make-samba-read-updated-smb-conf-file-without-restarting-samba-873133/  
