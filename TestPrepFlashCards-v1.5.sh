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























































































































