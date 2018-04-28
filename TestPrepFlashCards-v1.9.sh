When viewing statistics with vmstat, which statistic represents the time that the CPU spent waiting for I/O?

The ss utility displays static socket statistics directly from kernel space.

The vmstat command displays swap performance information.

The uptime command shows 
how long the system has gone without a reboot, 
load averages, 
and current number of users.


 w command shows the various logged-in users and their process’s CPU consumption.


The sar utility with no options displays system resource utilization data 
stored by the sadc utility in the /var/log/sa directory.



Using sar, what command would display thirtyrecords of current CPU utilization information at ten second intervals?
sar 10 30



The lsof command shows network connections by process and open filesystem files.




When the system needs more memory, using a memory management scheme, 
it takes an idle process’s memory pages and copies them to a disk location called 
swap space or swap or virtual memory.




Name two full-resource-monitoring software solutions that you can use to collect data and/or produce the needed graphs.

Here are five: collectd, Nagios, MRTG, Icinga2, and Cacti.




Name two utilities that can be useful in connecting particular processes with particular resource problems.

Here are three: ps, psmap, and pstree.



Name the six basic steps for installing a program from source.

(1) Download the installation file, 
(2) unpack the installation file, 
(3) read the installation’s documentation, 
(4) prepare for compiling, 
(5) compile the program, and 
(6) move the binaries to appropriate locations.



When installing a program from source and performing the source code compile, the configure script uses what it finds on your system and within the Makefile.ini file creates or updates the Makefile file.





You have obtained a program’s source code and need to unpack the installation file, which is named NewProg.tar.xz. What utility and minimum options are needed to do so?

The NewProg.tar.xz installation file has been created with the tar utility and compressed using xz compression. Therefore, you need the tar utility to unpack the installation file and the -x option to extract the files, the -J to uncompress the file using xz, and the -f option to designate the tar file. The entire command looks like this: tar -xJfNewProg.tar.xz.






Name two GUI and/or web-based backup solutions.

Here are four: Amanda, Bacula, Bareos, and BackupPC.




Name two full-resource-monitoring software solutions that you can use to collect data and/or produce the needed graphs.
Here are five: collectd, Nagios, MRTG, Icinga2, and Cacti.




The systemctl utility will send a wall message when which of its commands are issued? (Name four.)

Here are six: emergency, halt, kexec, power-off, reboot, and rescue.




To prevent a wall message from being sent while using systemctl, use its --no-wall option.



What are two filenames that are commonly used for the Linux kernel?

Common kernel filenames are bzImage, zImage, vmlinux, and vmlinuz.



Where are the module object files stored?

In the /lib/modules folder



If you download the kernel source, what folder should you link it to before you compile it?
The /usr/src/linux folder for Debian-based systems or the /usr/src/kernels folder for Red Hat–based systems.



What do you need to have installed to compile modules?

The kernel header files


Which configuration file is created by the kernel make targets?

The .config file




What program runs in background monitoring logs to detect new devices installed on the system?

The udevd program



What two commands do you need to run to make and install the kernel modules for your system?

First run make modules, and then run make modules_install.



What two commands are used to create an initial RAM disk file for booting?

Either the mkinitrd or the mkinitramfs programs


What filesystem provides a window into the kernel, displaying different kernel settings?

The /proc filesystem


What four main functions is the kernel responsible for controlling?

The system memory, software program management, hardware management, and filesystem management



Memory locations are grouped into blocks called ___________________ ___________________.

memory pages


The first process the kernel creates is called the ___________________ ___________________.

init process



What does Linux use to install device drivers into the running kernel?

Linux places the device drivers into modules, which can be dynamically inserted into or removed from the kernel.



On what series is the current Linux kernel version?

Linux is currently on the 4.x kernel series.



Name four native (created for Linux) filesystem types.

Here are five: ext2 (deprecated), ext3, ext4, reiserFS, Btrfs.



Journaling is the method that tracks uncommitted (file metadata not yet updated) data changes in a log file (journal) and provides an extra layer of data protection.



Name three non-native (not created specifically for Linux but Linux supported) filesystem types.

Here are four: ntfs, vfat, XFS, ZFS.


Name a filesystem type that provides COW instead of journaling.

Here are two: Btrfs and ZFS.


Name two commands to make (format) a partition so that it will become an ext4 filesystem.

Here are three: mkfs.ext4, mkfs -t ext4, mke2fs -t ext4.



A Btrfs subvolume can act like a subdirectory of a mounted Btrfs filesystem, and it is not a block device.


The command to create a snapshot named Bee of the Btrfs volume mounted at /home/Honey is 
btrfs subvolume snapshot /home/Honey /home/Honey/Bee.


Name three utilities that can be used to adjust ext2, ext3, or ext4 filesystems.

Here are four: debugfs, e2label, resize2fs, tune2fs.


Name two utilities that can be used to adjust XFS filesystems.

Here are three: xfs_admin, xfs_fsr, xfs_growfs.


Name three check and repair utilities for ext2, ext3, or ext4 filesystems.

Here are four: debugfs, fsck.* (fsck.ext2, fsck.ext3, fsck.ext4), dumpe2fs, tune2fs.


Name five check and repair utilities for XFS filesystems.

Here are six: xfs_check, xfsdump, xfs_info, xfs_metadump, xfs_repair, xfsrestore.


To persistently attach a filesystem, specify it in the /etc/fstab file or, if your distribution uses the systemd daemon, in a mount unit file.


On Linux servers using systemd, mount points listed in the /etc/fstab are converted into native mount units when either the server is rebooted or systemd is reloaded.





The /etc/fstab fields in order are 
Partition/Volume, 
Mount Point, 
Filesystem Type, 
Mount Options, 
Backup Selection, 
Integrity Check Order.



Name the various items that you may see within a /etc/fstab record’s Partition/Volume field.

The items that you may see within a /etc/fstab record’s Partition/Volume field are 
device file (/dev/sda1), 
volume label (Label=Test), 
UUID (UUID=7e32f35e-[...]), N
FS share (server01:/nfsshare), 
device mapper specification (/dev/mapper/a-swap).



If a /etc/fstab record contains a 1 in its Backup Selection field, what does that mean?

If a /etc/fstab record contains a 1 in its Backup Selection field, that means if the dump backup utility is used on this system, this particular filesystem will be backed up.





user: Allows a specified non–super user to mount the filesystem.
users: Allows all users to mount the filesystem.
ync: Forces filesystem buffers to write from memory to the media for every write to the filesystem. No effect on XFS.



A mount unit file needs to be created for the mount point 
/home/Bob/Test_Logs on a Linux system. 
Assuming a reference for this mount point is not created in 
the /etc/fstab and the system uses the systemd daemon, 
what should be the mount unit file’s name? 
(Do not include the absolute directory reference in the name.)

The mount unit’s filename should be home-Bob-Test_Logs.mount.







To manually mount a filesystem at the mount point, /home, using the systemd daemon and the mount unit file, issue:
systemctl start home.mount


Most mount options for a filesystem, such as the device filename and the filesystem type, 
are described in the [Mount] section of the mount unit file.




The blkid command allows you to look up 
device information and attributes 
and specify a single device via the device’s 
UUID
Label
device filename





To flush a filesystem’s write cache to disk, use the sync command. 



Name the AutoFS primary configuration file where you can define a non-default master map file.

Here are two (which one used depends on your distribution): /etc/sysconfig/autofs, /etc/default/autofs.



The default AutoFS master map file is the /etc/auto.master file.


Within the AutoFS master map file, a built-in map is defined by having -hosts in a record’s map-name field, and it causes any NFS servers’ (listed in the /net/ directory) offered exports to be mounted. 



Within the AutoFS master map file, an indirect map is a pointer to another file, and the filename is designated by /etc/auto.directory, where directory is the same name as the mount point. 


Within the AutoFS master map file, a direct map entry is simply a pointer to the /etc/auto.direct file.








An automount unit file needs to be created for the mount point /home/Bob/Test_Logs on a Linux system. Assuming a reference for this mount point is not created in the /etc/fstab and the system uses the systemd daemon, what should be the automount unit file’s name? (Do not include the absolute directory reference in the name.)

The mount unit’s filename should be home-Bob-Test_Logs.automount.


Name two Linux encrypted filesystems.

Here are three: dm-crypt, eCryptfs, and Linux Unified Key Setup (LUKS), which is also called dm-crypt/LUKS.



The Linux kernel v2.6 and up can support all current RAID levels (0, 1, 10, 4, 5, and 6).




Determine the current status of a running RAID array by viewing the /proc/mdstat file’s contents.




The Personalities line in the /proc/mdstat file indicates what RAID levels have kernel drivers loaded.


For a RAID array, the keyword active in its /proc/mdstat file record indicates the array has been created or assembled. 


For a RAID array using the device filename, the third array would be designated as /dev/md2.


The mdadm (Multiple Disk or Device Administration) utility is the primary utility for creating and managing Linux software RAID arrays.


Name seven modes of the mdadm utility.

Here are 10mdadm utility modes: 
assemble, 
auto-detect, 
build, 
create, 
follow, 
grow, 
incremental assembly, 
manage, 
miscellaneous, 
monitor.





which of the 10mdadm utility modes, which mode does not need its associated option specified in the command line?

The mdadm utility’s miscellaneous mode, whose option is --misc, does not need the --misc option specified, because the utility automatically recognizes that you desire miscellaneous mode via additional options, such as --detail.



Name the options that should be used with the mdadm utility to create the mdadm.conf configuration file.

The options that should be used with the mdadm utility to create the mdadm.conf configuration file are --verbose (or -v), --detail (or -D), and --scan (or -s). The --misc option is not required to set miscellaneous mode.



A RAID array partition can be either da (MBR partitions only) or fd. 
The da hex code equivalent is 0xDA for MBR partitions. 
The fd hex code equivalent is 0xFD (MBR partitions)
 or 0xFD00 (GPT partitions).





You have an SSD that is interfaced to your Linux system using the Non-Volatile Memory Express standard. 
You need to reference the drive, which is the first SSD drive. 
Specifically, you need to access the third namespace’s first partition on the drive. 
What device filename do you use?

The device filename to use is /dev/nvme0n3p1.



Describe drive DMA and name the utilities that will allow you to view or modify this drive attribute.

Direct memory access (DMA) allows data to be sent directly to/from an attached drive to/from the system’s memory. 
The utilities thatallow you to view or modify drive DMA include 
hdparm and sdparm (SCSI drives only). 




Any file listed in /proc/sys/ directories and subdirectories is a kernel parameter that can be modified by the sysctl utility.




The nvme utility is used to perform tuning and/or management of an NVMe-interfaced SSD.


The fstrim utility is used to manually fix internal fragmentation (via issuing the TRIM command) on TRIM-supported SSDs.




Name two popular SAN protocols besides iSCSI.

Here are three: 
the Fibre Channel Protocol (FCP)
the ATA over Ethernet (AoE) protocol
Fibre Channel over Ethernet (FCoE ) protocol.



A remote system offering up an iSCSI disk is called the target. A local system desiring to use the offered iSCSI disk is called the initiator.



An iSCSI Qualified Name (IQN) is a unique address that identifies an iSCSI target server along with its offered iSCSI drive. 
An IQN has the following basic format: iqn.domain-date.domain:unique-scsi-name.



Which file configures the iscsid daemon and controls many iscsiadm utility operations? (Give filename with an absolute directory reference.)

The /etc/iscsi/iscsid.conf file configures the iscsid daemon and controls many iscsiadm utility operations.




Name five LVM physical volume commands and their function.

pvchange Change physical volume(s) attributes.
pvck Check the physical volume(s).
pvcreate Designate physical volume(s) for use by LVM.
pvdata Display the physical volume(s) metadata.
pvdisplay Display various attributes of physical volume(s).
pvmove Move physical extents (PE) from one physical volume to another.
pvremove Un-designate physical volume(s) for use by LVM.
pvresize Resize a physical volume(s).
pvs Show physical volume information.
pvscan List all physical volumes.




To create an LVM volume group, use what command?

Use the vgcreate command to create an LVM group.


To add PV(s) to a VG, use what command?

To add a physical volume(s) (PV) to a volume group (VG), use the vgextend command.



To remove a physical volume (PV) from a volume group (VG), use the vgreduce command.


To merge two volume groups (VGs), use the vgmerge command.





To view an LV’s LEs mapping to PV PEs, use what command with what command option(s)?

To view a logical volume’s logical extents mapping to physical volume physical extents, use the lvdisplay command with the --maps command option.



To see LVs via the device mapper kernel driver, use what command with what command parameter(s)?

To see logical volumes via the device mapper kernel driver, use the dmsetup command with the info parameter.



How would /dev/vg04/lvol3 LV be referenced using the device mapper? (Use the absolute directory reference.)

The /dev/vg04/lvol3 LV would be referenced using the device mapper as /dev/mapper/vg04-lvol3




Though not required, the various LVM utilities may use a central configuration file to govern each utility’s behavior. This configuration file is the ___________________ file. (Give the absolute directory reference along with the filename.)

the various LVM utilities may use a central configuration file to govern each utility’s behavior. This configuration file is the /etc/lvm/lvm.conf file.



How many bits is an IPv4 address and an IPv6 address?

The IPv4 address uses 32-bits, while the IPv6 address uses 128-bits.




What protocol do you use to dynamically assign IP addresses to network devices?

The Dynamic Host Configuration Protocol (DHCP)



What two programs allow you to assign a static IP address to a Linux system?

ifconfig and ip

What two programs allow you to define a wireless access point configuration on the Linux system?

iwconfig and iw



Where do Debian-based Linux distributions store the network configuration settings?

In the /etc/network/interfaces file


Where do Red Hat–based Linux distributions store the network configuration settings?

In the /etc/sysconfig/network-scripts folder



Where is DNS server information stored?

The /etc/resolv.conf file



What command can you use to view the MAC addresses of hosts on the local network?

arp


To test network routes you can use the ___________________ program.

traceroute












































































































































































