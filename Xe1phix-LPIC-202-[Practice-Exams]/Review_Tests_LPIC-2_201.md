###Review Tests LPIC 2
----------------------------------------------------------------------------------------------------------------------------


wwww.penguintutor.com

201
----------------------------------------------------------------------------------------------------------------------------

What command is used to create a list of module dependencies, writing its findings into modules.dep?

**depmod**


Which is the CIDR netmask /27 in dotted decimal format?

**255.255.255.224**


Which of the following is true when comparing the ext2 and ext3 filesystems, in normal use? Select the two most appropriate answers.

**ext3 is the same as ext2 with added journaling**

**ext2 is faster than ext3**


Is the following statement true or false?
The grub shell provides direct interactive access to the grub bootloader.

**false**


You need to use tcpwrappers so that only address 192.168.1.7 can access all the services. Assuming you've added the appropriate entry to /etc/hosts.allow what would you need to put in /etc/hosts.deny? (or leave blank if you would not use hosts.deny)

**ALL:ALL**


After creating a new SWAP partition (of the correct type), what is the next step towards making it active?

**mkswap**


What option needs to be used to allow the ping command to be used against a broadcast address? Enter the option only (do not include the command or any ip addresses).

**ping -b**


What is the effect of the -p option on the fsck command?

**automatically attempt repair of all errors**


You are compiling a new kernel. You have a custom .config file from an older version of the kernel. What command can be used to use the old configuration command for the new kernel version?

**make oldconfig**


You need to use tcpwrappers so that address 192.168.1.7 can access all the services. What entry should you put in the /etc/hosts.allow file to enable this?

**ALL: 192.168.1.7** (whitespace between : and 192)


Which of the following addresses are by default in a class B network? Select all that apply.

**128.1.3.7**

**142.35.12.0**

**190.3.78.3**

**191.37.2.10**


What file, holding details of module dependencies, is created by the depmod command?

**/lib/modules/kernel-version/modules.dep**


Issuing the command "chkconfig ntpd on" will enable the ntp daemon in which runlevels?

**2, 3, 4 and 5**


What information is not normally provided by the modinfo command? Choose all that apply

**in use**

**size**


You need to use tcpwrappers so that only address 192.168.1.7 can access all the services. Assuming you've added the appropriate entry to /etc/hosts.allow what would you need to put in /etc/hosts.deny? (or leave blank if you would not use hosts.deny)

**ALL: ALL** (whitespace between : and ALL)


What is the name of a command to create an initial ramdisk. 
Give the name of the command only.

**mkinitrd** or **mkinitramfs**


After compiling a new kernel which of the following is a valid filename for the compressed kernel?

**zImage** or **bzImage**


Which option will cause the modprobe command to load all modules instead of stopping after the first successful loading?

**-a**


What command can be used to install a single module, a stack of modules, or all modules marked with a specified tag? Enter the command only (no path)

**modprobe**


According to RFC 1918 a number of address ranges are reserved for private internets. Which of the following addresses are not in the private ranges? Select all that apply.

**168.192.3.17** and **192.169.7.12**

The reserved ranges are:
10.0.0.0 - 10.255.255.255 (10/8 prefix)
172.16.0.0 - 172.31.255.255 (172.16/12 prefix)
192.168.0.0 - 192.168.255.255 (192.168/16 prefix)


What is the main configuration file for BIND (version 8 or later)? Provide the full path.

**/etc/named.conf**


Which of the following show the correct syntax for applying an incremental patch?

**patch -p1**


Which of the following is the correct order for an entry in inittab?

**id:runlevels:action:process**


You decide to use the logical volume manager (LVM) to manage four 4GB disk drives. After
creating the volume group, how would you create a 10GB logical volume called big-app?

**lvcreate -l 2560 vg01 -n big-app**


What information does the file modules.dep provide?

**A list of modules required by each module**


Before compiling a new kernel, what needs to be done?

**Configure the kernel options**


On a system with separate partitions for /, /usr, /var, /tmp, which filesystem[s] can safely be
mounted readonly?

**/usr**


Which of the following is a valid location in the automount configuration, when a Windows
share needs to be made available to the system?

**//servername/sharename**


What script is included with the kernel source to patch a kernel?

**patch-kernel**


Which command would you use to apply a diff file to an original?

**patch < diff-file**


One of the IDE hard drives in a server is transferring data very slowly. What command must
be run to enable DMA on it?

**hdparm -d1 /dev/hda**


What command is used to create an ISO9660 filesystem that can be properly accessed
from a Windows 95/98 machine?

**mkisofs -J -T -r -o backup.iso /home/joe**


In order to find all library dependencies of /usr/bin/foo, which of the following statement is
true?

**Running ldd against /usr/bin/foo will show the required libraries**


To make a system backup, the simplest and fastest way is to use the tar command. Select
the correct alternative below that shows the three tar parameters that create, list and
expand a tar file respectively.

**–create –list –extract**


A Linux machine freezes during boot. To boot directly to a shell prompt so that editing of
files and manual starting of services is possible which command line must be passed to the
kernel for the boot proces

**init=/bin/bash**


What is the command to add another IP address to an interface that already has (at least)
one IP address?

**ifconfig eth0:sub1 192.168.1.2**

**ifconfig eth0:1 192.168.1.2**


What needs to be done to enable 32 bit I/O transfer mode for (E)IDE disks, on a system
running a 2.4 series Linux kernel?

**The hdparm utility must be used**


After configuring a new 2.4 series kernel, all dependencies, such as included files, need to
be created. How can this be achieved?

**make dep**


If the command arp -f is run, which file will be read by default?

**/etc/ethers**


What is the difference between zImage and bzImage targets when compiling a kernel?

**zImage is loaded into low memory, bzImage is loaded into high memory**


A DNS server has the IP address 192.168.0.1. Which TWO of the following need to be done
on a client machine to use this DNS server?

**Add nameserver 192.168.0.1 to /etc/resolv.con**

**Ensure that the dns service is listed in the hosts entry in the /etc/nsswitch.conf file**


Which of these commands allows you to use shared libraries that are in /usr/local/lib?

**ldconfig /usr/local/lib**


After unpacking the source code for a Linux kernel, what is the first make command that
should be run which will delete any current configuration and all generated files? This
command will ensure that no inappropriate files were left in the kernel archive by the
maintainer.

**make dist clean**


Which script, in the linux/scripts directory, can be used to add up grades or updated code to
the 2.6.xx kernel source code?

**patch-kernel**


After unpacking source code, what file is used by configure to create a final Makefile?

**Makefile.in**


How can you manually add an entry to your system’s ARP cache?

**Run arp -s hostname FF:FF:FF:FF:FF:FF**


Which tool can be used to control the runtime behavior of udev?

**udevadm**


What is the purpose of udevmonitor?

**Listen to kernel events produced by a udev rule and print information to the console**


On a Debian based system, which command can be used to stop the apache2 init script
from running at boot time once the real script has been removed from /etc/init.d/?

**update-rc.d apache2 remove**


A zone file on the DNS server has been updated. Which of the following commands will tell
named to reload its zone files? (Please select TWO correct answers)

**rndc reload**

**killall -HUP named**


Which of the following applications utilize the device mapper? (Select TWO correct
answers)

**EVMS**

**LVM2**


Why has mkinitrd been deprecated in favour of mkinitramfs in 2.6 series kernels? (Select
TWO correct answers)

**mkinitrd relies on devfs**

**SATA hard drives are unsupported**


To remove the patch patch-2.4.28.tar.bz2 from a kernel source tree, the command that must
be used is:

**bunzip2 -c ../patch-2.4.28.tar.bz2 | patch -Rp1**


A pre-compiled module has been moved to /lib/modules/<kernel-version>, but ‘modprobe -a
<module-name>’ fails to load it. What needs to be done to enable usage of this module?

**depmod must be run**


Which of the following commands should be used in a bash script that needs a variable
containing the IP address of the eth0 interface? The output for the command ifconfig eth0 is
shown below: 

eth0 Link encap:Ethernet HWaddr 00:0C:29:CB:FA:30 inet

addr:192.168.246.11 Bcast:192.168.246.255 Mask:255.255.255.0 UP BROADCAST

RUNNING MULTICAST MTU:1500 Metric:1 RX packets:4721 errors:0 dropped:0

overruns:0 frame:0 TX packets:3216 errors:0 dropped:0 overruns:0 carrier:0 collisions:0

txqueuelen:1000 RX bytes:445184 (434.7 Kb) TX bytes:512968 (500.9 Kb) Interrupt:185

Base address:0x1080

**IP=$(LANG= ifconfig eth0 | grep inet | awk ‘{ print $2 }’ | cut -d: -f2)**


You have elected to use the automounter and the autofs script. Your /etc/auto.master file
contains the following: /home /etc/auto.home /project /etc/auto.project /data yp:data.map If
you change the contents of /etc/auto.project to include a new source path what must be
done to access the new path?

**Nothing Simply access the newly mapped resource**


To restore the kernel source to the previous, unpatched, version, which of the following
commands could be used?

**patch -R**


A 2.6.9-ac1 kernel would be

**someone's patch to a stable kernel**


What command should be used to find out what PCI devices can be seen, without querying
the kernel?

**lspci -b**


Your routing configuration relies on eth0 being a 3com card that requires the 3c59x module.
What line must be added to modules configuration file, to ensure that eth0 always uses this
module?

**alias eth0 3c59x**


During which stage of the boot process would this message be seen? Ide0: BM-DMA at
0xff00-0xff07, BIOS settings: hda:DMA, hdb:DMA

**Hardware initialization and setup**


Which of the following commands can be used to access the content of a ramdisk file
(/boot/initrd) used by the kernel at boot time?

**cp /boot/initrd /tmp/initrd.gz; gunzip initrd.gz; mount /tmp/initrd /mnt/ -o loop**


After changing the default runlevel in the init configuration file, the system boots in a
different than the intended runlevel. Where else could be this different runlevel be defined?

**In the boot laoder configuration file**


A BIND server should never answer queries from certain networks or hosts. Which
configuration directive could be used for this purpose?

**blackhole{...;};**


What command can be used to view all the entries in the arp cache? Enter the command only with options (do not include the path).

**arp -a**


Is the following statement true of false? When patching a kernel by more than one minor version, only the latest incremental patch needs to be applied.

**false**


What file, holding details of module dependencies, is created by the depmod command?

**The file is /lib/modules/kernel-version/modules.dep. None of the other files exist.**


Which of the following show the correct syntax for applying an incremental patch?

**patch -p1**


What command is used to create a list of module dependencies, writing its findings into modules.dep?

**depmod**


What options would be used on the chkconfig command to enable the ntpd daemon at runlevels 3 and 5?

**chkconfig --level 35 ntpd on**


What command is normally used to create a filesystem for a CD-ROM. Enter the command name only, no options or path.

**mkisofs**


Issuing the command "chkconfig ntpd off" will disable the ntpd from which runlevels (assuming it is currently on at all runlevels):

**all runlevels**


What is the name of the Linux command that can be used to turn write caching of the hard disk on or off? Enter the command name only, no options or path.

**hdparm**


Which of the following addresses are by default in a class B network? Select all that apply.

**128.1.3.7**

**142.35.12.0**

**190.3.78.3**

**191.37.2.10**


What type of compression is used on a bzImage kernel file?

**Gzip. The bz prefix indicates a "big" compressed archive, not a bzip2 archive.**


Is the following statement true or false?
The grub shell provides direct interactive access to the grub bootloader.

**false**


To securely use dynamic DNS updates, the use of TSIG is recommended. Which TWO
statements about TSIG are true?

**TSIG is used only in server configuration**

**Servers using TSIG must be in sync**


Which THREE statements concerning automounter are true?

**For each entry in auto.master, a separate automounter daemon is started**

**Changes to auto.master require automounter to reload its configuration**

**Changes to auto.master require automounter to reload its configuration**


What are typical targets in a makefile?

**clean, install, uninstall**


The Human Interface Device (HID) is being used, which of the following represents a USB mouse connected to the PC?

**/dev/input/mice**


Select the TWO correct alternatives regarding the kill -9 command:

**Its use should be avoided and other alternatives should be tried before it.**

**Its use can occasionally cause the data loss.**


The server has two network cards. The driver for the first card is the module 8139too and
the driver for the second card is the module ne2k-pci. How is it possible to ensure that the
card using the 8139too driver is detected before the card using the ne2k-pci driver?

**modprobe 8139too dev=eth0; modprobe ne2k-pci dev=eth1**


Which of these would be the simplest way to configure BIND to return a different version
number to queries?

**Set version “my version” in BIND’s configuration file.**


Why shouldn’t you use the options -z and -j when using tar with a magnetic tape backup?

**In case of damaged tape uncompressed tar archives may allow partial recovery of the backup**


In which subdirectory of /proc is information about PC Cards, which are connected and
recognized by a 2.6 kernel stored? Please enter the complete path.

**/proc/bus/pccard**


Which file contains the software RAID configuration? (Please enter the file-name without the
path)

**raidtab**


Which program can be used to adjust the DMA settings of an IDE hard drive? Please enter
it without path, parameters or arguments

**hdparm**


Your newly-compiled kernel cannot find any modules it needs to load. What command was
missed when compiling and installing the kernel?

**make modules_install**


Consider the following /etc/fstab file: 

/dev/hda1 swap swap defaults 0 0 /dev/hda2 / ext2defaults 1 1 

/dev/hda3 /home ext2 defaults 1 2 none 

/proc proc defaults 0 0 /dev/fd0

/media/floppy vfat user,noauto 0 0 

What command can an ordinary (non-root) user use to mount a floppy disk in this system? (Please enter the command with all parameters and/or
options)

**mount /dev/fd0**


You want to change the file that contains the message which is used at the login prompt
when users log in locally. Please enter the file including the path.

**/etc/issue**


Which environment variable you have to setup to use shared libraries that are not in the
standard search path?

**LD_LIBRARY_PATH**


When configuring a new kernel, what file under /usr/src/linux/ contains the configuration?

**.config**


In which directory is the Linux kernel documentation be found?

**/usr/src/linux/Documentation**


You need to recover some data from a magnetic tape and it is the second file on the media.
The following command is being attempted: mt -f /dev/nst0 _______ What is the mt_
operation that will position the tape on the first block of the second file? (Please specify the
operation with no other parameters)

**asf 2**


Which directory in /dev/disk/ can be used to determine the UUID of a connected hard disk?

**by-uuid**


What command will search for physical defects on a hard drive and will mark these defects
so that they are no longer used? (Please specify the command with no path information)

**badblocks**


What command will remove the physical volume /dev/sda4 from the volume group
/dev/vg0? (Provide the command with options and parameters)

**vgreduce /dev/vg0 /dev/sda4**


Which directory contains the PCMCIA configuration files?

**/etc/pcmcia**


You have installed some new libraries, but these are not available to programs and are not
listed by ldconfig –p. What file should the path to the libraries be added to, before running
ldconfig?

**/etc/ld.so.conf**


Which chkconfig command will display whether or not the service ldap is configured to start
in each runlevel? (Provide the command and any options or parameters)

**chkconfig --list ldap**


On a server running the 2.6.27-11 Linux kernel, which file in the/boot directory contains the
kernel configuration parameters?

**config-2.6.27-11**


Please enter the complete path to the main configuration file for syslogd, which logs system
messages on Linux systems?

**/etc/syslog.conf**


With which command can the reserved blocks count for a file-system be seen? (Please
enter only the command without the path or any parameters or options)

**tune2fs**


For interpreting system rc scripts a shell is most commonly used. Please enter the first line
found in such scripts.

**#!/bin/sh**


What directive can be used in named.conf to restrict zone transfers to the 192.168.1.0/24
network?

**allow-transfer { 192.168.1.0/24; };**


This program has 3 operating modes: copy-in mode, copy-out mode, and copy-pass mode,
and is used to copy files into or out of archives. What program is this? (Please provide the
command name only, with no arguments or path.)

**cpio**


What is the location of the main udev configuration file? (Specify the full path and filename)

**/etc/udev/udev.conf**


After calling ./configure with its appropriate parameters and no errors, what would be the
next command to run?

**make all or make**


Which site-specific configuration file for the shadow login suite must be modified to log login
failures? Please enter the complete path to that file.

**/etc/login.defs**


Please enter, separated with a space but without paths, the TWO archive programs needed
in addition to gzip, to extract files from a .deb file without using the Debian package
manager.

**ar tar**


Because of a bad BIOS LBA translation, a booting system displays an error instead of a
LILO prompt. Complete the error message with the error number: L

**01**


Please enter the command with all parameters and arguments, that could be used by root to
list the cron jobs for the user john.

**crontab -u john -l**


Which command with all parameters and arguments, can be used by root to erase the cron
job list for the user fred?

**crontab -u fred -r**


Messages from programs are not appearing in the user’s native language. What
environment variable must be set for this to happen?

**LANG**


When building an RPM package, which rpmbuild option is used to unpack sources and
apply patches before proceeding with the next steps?

**-bp**


Which of the following must be included in the syslogd configuration file, so that ONLY
kernel related messages with the priority crit are reported?

**kern.=crit**


What does the following script do? #!/bin/bash find / -perm +4000 | mail -s “Daily find output”
root

**Emails a report of all suid files to root**


A system has one hard disk, configured as master and connected to the primary IDE
controller, and one CD writer, configured as slave and connected to the secondary IDE
controller. If the system is correctly configured, which device is used to represent the CD
writer?

**/dev/hdd**


A new PCMCIA network card is not functioning correctly. To troubleshoot this, the socket
information should be checked. How can this be done? (Choose two.)

**cardctl -s**

**cat /var/lib/pcmcia/stab**


Which command displays information about connected USB devices?

**cat /proc/bus/usb/devices**


What command can be used to configure the baud rate on a serial port?

**set serial**


What command is used to re-add a partition to a software RAID setup?

**taidhotadd**


Which TWO of the following sentences are true about this package? Consider the following
excerpt from an RPM spec file: Summary: Complete Web authoring system for linux Name:
nvu Version: 0.50 Release: 5 Source0: %{name}-%{version}.tar.bz2 Patch0:
nvu-freetype2.patch.bz2 Patch1: nvu-mozilla-1.1-system-myspell-dicts.patch.bz2 Patch2:
nvu-mozilla-1.7-spellcheck-fulllangname. patch.bz2 License: MPL/LGPL/GPL Group:
Development/Other Url: http://www.nvu.com BuildRoot: %{_tmppath}/%{name}-buildroot
BuildRequires: libjpeg-devel libpng-devel libIDL-devel BuildRequires: zip tcsh_

BuildRequires: gtk+2-devel >= 2.2.0 Which TWO of the following sentences are true about
this package?

**The nvu-0.50.tar.bz2 file contains pristine sources for nvu._**

**Package gtk+2-devel version 2.2.0 or higher needs to be present in the system before this nvu package may be installed.**


In some older machines, the Linux kernel defaults to polling for the parallel printer port
(/dev/lp0), even if it is capable of interrupt-driven operation (ECP). Which utility enables
interrupt-driven operation of the parallel port?

**tunelp**


To check winbind functionality, you have try: wbinfo -u getent passwd What is the next
action?

**The contents of nsswitch.conf should be verified**


