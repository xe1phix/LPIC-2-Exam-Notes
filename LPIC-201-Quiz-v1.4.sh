


What program does the workstation firmware start at boot time?
The workstation firmware looks for the bootloader program to load an operating system.

The workstation firmware looks at the first sector of the first hard drive to load the bootloader program. This is called the Master Boot Record,


The Master Boot Record (MBR) is located in only one place—on the first sector of the first hard drive on the workstation.

ESP is stored in the /boot/efi directory


The UEFI specification doesn’t require a specific extension for UEFI bootloader files
however, .efi file extension to identify them;


The Linux Loader (LILO) bootloader program was the first bootloader used in Linux


The GRUB2 bootloader stores configuration files in both the /boot/grub directory and the /etc/grub.d directory


The grub-mkconfig command combines the configurations defined in the /etc/default/grub file and all of the files in the /etc/grub.d folder into a single grub.cfg configuration file.



What program does the kernel use to start other programs?
init



Which configuration file contains the SysV default runlevel?

The /etc/inittab file contains the initdefault setting, which defines the default runlevel for the Linux system.


Debian-based systems use runlevel 2 to start all of the applications necessary for multiuser activity on the system


runlevel 5, is used by Red Hat–based Linux distributions as the default runlevel for graphical workstations, but it is not used by Debian-based systems.


init and telinit commands are used to change the current runlevel on a Linux system



--no-wall option allows a shutdown to proceed with no wall messages to the terminal users.



An incremental backup is a copy of all data that has been added or modified since the last backup. 

the differential backup, is a copy of all data that has been added or modified since the last full backup.



Amanda, Duplicity, and Bacula are all GUI and/or web-based backup solutions


/dev/st1 (SCSI) and /dev/ht1 (PATA) tape device files are for automatically rewinding tape devices.



mt program allows you to control a tape and determine its current status.

rsync is a backup program, but it cannot be used with magnetic tapes, much less control them.



the proper rsync syntax for sending a backup over to the remote ServerA host using encryption via OpenSSH. 
rsync -av Project ServerA:~/




The configure utility creates or updates the Makefile with the Makefile.in file’s contents and what it finds on your system.


free (option A) and vmstat (option E) commands provide information primarily about system memory usage. The top (option D) command, while providing other resource statistics, also provides memory usage data.



sar 2 20 command will display CPU usage information 20 times and space it 2 seconds apart.



Memory is divided up into chunks called pages

Swapping is the memory management technique where idle processes’ memory is swapped out to swap. 

The kernel manages the system memory in Linux,


Linux uses modules to load device drivers into the kernel


Which kernel file type is used to boot the Linux system?
 Binary file


The Linux kernel developers release patches to upgrade source code easily from one version to the next version,

What type of release can you use to upgrade an existing kernel to a newer version?
 Patch release



gconfig target uses the GNOME desktop library to produce a graphical menu to determine the configuration settings


Debian-based systems use the mkinitramfs program to create the initial RAM disk used at boot time



–d option only displays USB devices with a specific vendor ID
–s option only displays USB devices connected to a specific bus,
–t option displays information in a tree format,


The udev device manager system uses the udevd program to listen to kernel event messages and load the appropriate modules



The /etc/udev/udev.conf configuration file defines settings that control how the udevd program operates


Rules for the udevd program are stored in the /etc/udev/rules.d folder

The /etc/udev/udevd.conf file contains configuration settings for controlling the udevd program, not rules


The /proc/filesystems file contains a list of all of the filesystems supported by your system. 


sync command allows you to flush the filesystem buffers, which essentially forces the data commitment process to take place immediately. 
force filesystems to write metadata residing in memory to the filesystem media structures?




findmnt command displays all of the mounted filesystems in a tree format,	


RAID 0, RAID 1, and RAID 10 configurations can be implemented on a btrfs filesystem. 


El Torito, Joliet, and Rock Ridge are all ISO9660 standard extensions for use with optical media.


map types can be found in the /etc/auto.master file
Built-in
Direct
Indirect


change the AutoFS service’s master map to a different configuration file than the /etc/auto.master file
/etc/sysconfig/autofs 
might be /etc/default/autofs


The eCryptfs filesystem is a pseudo-filesystem that is layered on top of another filesystem, and it provides file-by-file encryption.






































