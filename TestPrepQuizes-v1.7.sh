The -p option to pstree shows process IDs along with the standard pstree output. The -a option displays command-line arguments for commands. 



Which of the following commands displays a list of currently open files along with their sizes?
The lsof command is used for this purpose, and it can help if there are large files that may be affecting performance. 


When using htop to monitor a process interactively, which key can be used to display open files for the selected process?
l    Display open files for a process

The l key will list open files for a given process, assuming that lsof is installed. The L key performs a library trace if ltrace is available.




When working in a virtual server environment, which column within iostat output shows the amount (percentage) of time spent in an involuntary wait scenario due to the hypervisor?

The steal column - shows the percentage of time that was spent waiting due to the hypervisor stealing cycles for another virtual processor.



The current time, how long the system has been running, how many users are currently
logged on, and the system load averages for the past 1, 5, and 15 minutes.
       
a load average of 1 means a single CPU system is loaded all the time 
while on a 4 CPU system it means it was idle 75% of the time.





Which of the following files contains information about the swap space including the currently used amount of swap and the disk partitions used for the swap space?

The /proc/swaps file can be used to gather information quickly, especially within a script, on swap space.




Which of the following tools provides a web interface for network-related statistics such as bandwidth usage per protocol and host?

The ntop program monitors network interfaces and provides web-based reporting on bandwidth utilization by protocol and host. Both mrtg and Nagios can provide similar information but typically not on a per-protocol or per-host basis.


Which option to the ps command displays information in a wide format?
w      Wide output
Providing information from ps in a wide format can be helpful for viewing the command line of a given command. 
The a option displays all processes while 
the o option enables the choice of columns for output.
 
 
 
When no interval or count is provided for the sar command, what information is used as output?

If the interval parameter is set to zero, the sar command displays the average statistics for the time since the system was  started.
 
If the  interval parameter is specified without the count parameter, then reports are generated continuously.

The collected data can also be saved in the file specified by the -o filename flag



Which of the following lsof commands will display all open connections for port 80?

 lsof -i :80






When viewing information with vmstat, you notice that there are two processes in the b column, indicating uninterruptible sleep. How do you find which specific processes are currently in uninterruptible sleep mode?
Use ps and look for D in the Stat column.



A process in Sl is in normal sleep for a multithreaded process. 
Rebooting the server is the only way to clear processes that are in uninterruptible sleep, 

the -n option to vmstat selects how the header is displayed.







When working with htop, which of the following options sets the delay between updates to 10 seconds?
The -d option is used to set the delay, and the interval is tenths of a second, thereby needing 100 such intervals to equal 10 seconds.


Which of the following commands and options displays performance information including memory and CPU usage every second for 10 seconds?
The vmstat command displays both memory and CPU usage information.
vmstat [options] [delay [count]]



Which of the following commands displays the number of packets forwarded by the kernel?
The netstat -s command displays aggregate statistical information for networking, including the total packets received and the number of packets forwarded.



You are using a two-processor system and notice that the one-minute load average is 1.00. What does this mean for performance?
One of the processors was idle 50% of the time.

On a system with one processor, a load average of 1.00 would indicate high utilization. However, with two processors that load average equals approximately 50% capacity. 




What is the expected output when providing a 0-increment value to the sar command with no count value provided?

Average utilization since last restart

When a 0 interval with no value for count is sent as an argument to sar, the overall averages since last restart will be displayed











You are upgrading the kernel that has been previously compiled on the same server. Which of the following commands incorporates the contents of the existing kernel configuration into the new kernel?

The make oldconfig command will integrate the existing configuration file into the new configuration for the kernel.



Which of the following commands unzips a kernel source file that has been compressed with xz compression?
 the -d option





Which of the following compressed kernel images is limited to a maximum size of 512 KB?
The legacy zImage format is limited to 512 KB in size, while bzImage does not have such a limitation.



Which make target provides a curses-based interface into kernel compilation to help select options within the kernel?
The menuconfig target provides a graphical-styled interface for choosing kernel options, and it is appropriate to use over an ssh connection. Be careful compiling a kernel over ssh, though. If you choose the wrong options, the server may not boot successfully. Thus, make sure that you have another means to access the console.




You are working with a legacy CentOS 5 system and need to re-create the initial RAM disk. Which of the following commands is used for this purpose?
The mkinitrd command is used on older systems to create the initial RAM disk. The initial RAM disk is used to load—some might say preload—essential modules for things like disks and other vital components needed for booting





the I/O blocking is due to a process in what is called an “uninterruptible sleep” (the ps utility shows this process in a D process state), and it may be blocking other processes from completing their I/O requests.





The bzImage file is used for larger kernel images, while the zImage file is used for smaller kernel images, 



After you compile the module files, Linux stores them in the /lib/modules folder for easy reference,



o compile a module, you only need the kernel header files;


The oldconfig make target utilizes the existing kernel configuration file and updates it with the new selections you make in the menu



The xconfig make target uses a generic X Window application to prompt you for kernel features. 
It can run in any graphical desktop environment,


The menuconfig make target uses a text-based menu


Before you compile the kernel, you should remove any files left over from previous compile attempts. You do that with the clean make target


The modules_install make target installs the modules

The install target installs the kernel but not the modules

The menuconfig target builds the kernel but not the modules

The modules target builds the modules but doesn’t install them


Linux uses an initial RAM disk to load as a temporary filesystem and then reads the necessary modules from that filesystem

GRUB2 and GRUB Legacy are bootloaders that load the kernel but don’t store the modules, 


The mkinitrd utility builds an initial RAM disk file that you can use to load filesystem modules in the bootloader,
 
The dynamic kernel module support (dkms) program allows you to define modules to automatically recompile when a new kernel is installed, 


The insmod program inserts a new module into the kernel, and the modprob program modifies the status of a module to include installing it

The dkms program automatically compiles new versions of modules when a new kernel is installed, but it doesn’t automatically insert new modules into the kernel


The udevd program runs in background and monitors system log files, looking for new hardware that has been added to the system,

 The dkms monitors for a new kernel to recompile the modules, but it doesn’t monitor for new hardware

the sync command allows you to flush the filesystem buffers, forcing the data commitment process to take place immediately. 


the next step is to activate the new swap partition with the swapon command using super user privileges.


swapon -s
Display  swap  usage  summary by device. 


The blkid command (option E) is also correct, because it will show both mounted filesystems and those that are not attached as well. 




for /etc/fstab which items could be listed in the first field

a filesystem via its UUID number,
a filesystem via its device mapper name,
an NFS share via its share name.
a filesystem via its label






The -P showall option to the smartctl command will show all the various devices (with SMART capabilities) that are supported by the smartctl command. 




 Rock Ridge is a series of optical filesystem ISO-9660 extensions that enable the support of longer filenames, symbolic links, and more than eight levels of directory hierarchy. 
 
 
    Longer file names (up to 255 bytes) and fewer restrictions on allowed characters (support for lowercase, etc.)
    UNIX-style file modes, user ids and group ids, and file timestamps
    Support for Symbolic links and device files
    Deeper directory hierarchy (more than 8 levels)
    Efficient storage of sparse files

 
 
 Joliet enable the support of longer filenames and allow the use of Unicode for internationalization purposes.



El Torito  allows a system to boot from optical media with an ISO-9660 filesystem and this extension.

a 32-bit CPU PC BIOS will search for boot code on an ISO 9660 CD-ROM. 



The btrfs-convert utility will convert an ext2 filesystem to a Btrfs filesystem and store the original ext2 filesystem image in a subvolume named ext2_subvol by default




AutoFS uses the /etc/auto.master file, also called the master map, as its primary configuration file for managing automatically attached network storage.



 The wireless network operates at the physical network layer

The network layer uses addressing protocols, such as IP, to send data between systems on the network

The transport layer uses ports to direct network traffic to specific applications, running at the application layer,



The netmask value determines the network portion of the IP address, 
which identifies to which network the system is connected. 


The netmask value sets the network portion of the IP address to 1s and the host portion of the IP address to 0s.

255.255.255.0, indicates that the first 24 bits of the address are 1s, so it represents a proper netmask value



An IP address consists of the network address and a unique host address, 


IP version 6 uses 128 bits separated into eight groups of four hexadecimal values
IP version 4 addresses use 32 bits

Many IPv6 networks use a 64-bit network address and a 64-bit host address, but the full IPv6 address is 128 bits


The default router is used to send packets from the local network to remote networks, 
so to communicate with a remote host you need to define the default router address, 


the DNS server defines how to retrieve the IP address of a host based on its domain name


The DNS server maps the hostname to an IP address, 
you must have a DNS server defined in your network configuration to be able to use hostnames in your applications. 



The Dynamic Host Configuration Protocol (DHCP) is used to assign dynamic IP addresses to client workstations on a network

The default router can’t assign addresses to devices

The ARP table maps the hardware address of the network card to IP addresses

 The netmask value determines the network address but not the IP address of the host


The loopback address is a special address assigned to the loopback interface, which allows local applications to communicate with each other,

 The hostname identifies the local host for remote connections, not for local applications,



TCP guarantees packet delivery between applications

ICMP is used to send control messages between applications

DNS and DHCP are not transport layer protocols,






ed Hat–based systems use separate files to store the IP address and router information. 
stored in the /etc/sysconfig/network-scripts folder


The iwlist command displays all of the available wireless network access points detected by the wireless network card,

The SSID value defines the access point name, and it is set using the essid option in the iwconfig command,

The key specifies the encryption key required to connect to the access point




The ip command allows you both to display and to set the IP address, netmask, and default router values for a network interface,

The ifconfig command can set the IP address and netmask values but not the default router.


ping command sends ICMP packets to a specified remote host and waits for a response


nmap command can scan remote hosts for open ports, but it doesn’t send ICMP packets






The menuconfig target provides a graphical-styled interface for choosing kernel options



The clean target removes most compiled files, though some may be left such as those related to kernel compilation. 


The mrproper make target removes compiled files from previous compiles of the kernel but also cleans the .config file as well.




The LOCALVERSION option, found within the General Setup area, can be used to append custom versioning based on your local needs.



Dynamic Kernel Module Support (dkms) is used for building kernel modules outside the kernel source tree.



The depmod command is used to create a list of modules. The list is kept in a file called modules.dep, 


The udevadm command is used to work with the udev interface to the kernel, and the monitor subcommand displays kernel uevents and other udev events in real time.



Which option to sysctl displays 
-a option displays all values and their current settings for sysctl. 
-b option is binary and displays values without any new lines.
-d option is an alias



Which of the following make targets can be used to create a Debian package of a kernel image and related files?

The deb-pkg target creates .deb files that are then suitable for management through the Debian package management system. Similar targets are available on other systems, such as rpm-pkg for Red Hat and CentOS systems.


Which of the following commands displays the current kernel version?

uname -r 		 displays the kernel version number.



Within which directory hierarchy are the names and values for sysctl gathered?

Information for sysctl is found within /proc/sys




Rules related to udev are stored in /etc/udev/rules.d.

The /etc/udev hierarchy contains the udev.conf configuration file along with other components related to the configuration of udev.


Within /usr/src/linux/Documentation you will find extensive documentation on the kernel source code, 




Which option to lspcidisplays the kernel driver in use for the given PCI device?
-k option shows the kernel driver associated with a given PCI device, 
-t option displays information in a tree-like structure
-n uses numbers instead of device names. 





The dracut command is used to create the initial RAM disk for newer systems and has replaced the legacy mkinitrd command used for the same purpose.




modprobe -r				 removes the named kernel modules and attempts to remove any modules on which the named module depends, 
		 -d 			 sets the root directory for modules, while 
		 -v 			 verbose and 
		 -f 			 forces the module to load.




The file /proc/kallsyms provides a way to view the currently loaded kernel symbols.


Which of the following options to modprobe will show the dependencies for a module?
--show-depends option displays the dependencies for a given module. 




systool utility can be used to show currently loaded options for a given module. 



The /proc/sys/kernel hierarchy contains vital configuration information for a kernel.



/etc/udev/rules.d/50-hdparm.rules.
To make any hdparm drive changes permanent, you must modify (or create) the /etc/udev/rules.d/50-hdparm.rules file.




A Logical Unit Number (LUN) can be used to identify a unique logical SCSI device on the target system, 


A World Wide Identifier (WWID), also called a World Wide Name (WWN), can be used for identifying certain drives, such as iSCSI drives




isciadm utility (option A) discovers and logs into iSCSI targets and manages the open-iscsi database files


lvcreate utility creates a logical volume (LV) from a designated volume group (VG). 

create an LV snapshot using the -s option


The Device Mapper (option E) is a kernel driver, which maps physical storage blocks to virtual storage blocks, creating a framework for LVM and RAID. 



dmsetup utility allows you to interact with the Device Mapper, 



The SSID of an access point must be unique and is used by clients to connect to the access point,




The IPv6 address scheme uses 128-bit addresses
IPv4 used 32-bit addresses,


The link local address automatically defines an IPv6 address that can be used on local networks,



Port 23 is for the Telnet protocol, 
22 is for SSH,
443 is for secure HTTP
20 is for FTP, 





What command-line tools can you use to set the default router for the Linux system?

ip and route



 dig command returns the DNS records defined for a single host or a network of hosts




