



/proc/mdstat

* File containing some RAID details
* Shows the state (active/inactive) of the RAID device
* Formats the now-active RAID array as a normal filesystem and mounts as desired



fuser

* Used to identify processes that are using files or sockets
* -v - verbose display mode
* -k - kill any processes accessing the file or mount



Command equivalent examples - ifconfig, route and arp to ip

  * route add default gw 10.1.1.1 = ip route add default via 10.1.1.1
  * route del default = ip route del default
  * route add -net 10.1.1.0 netmask 255.255.255.0 gw 10.1.1.1 = ip route add 10.1.1.0/24 via 10.1.1.1
  * route del -net 10.1.1.0 netmask 255.255.255.0 gw 10.1.1.1 = ip route del 10.1.1.0/24 via 10.1.1.1
  * route = ip route show
  * ifconfig = ip addr show
  * ifconfig eth0 promisc/-promisc = ip link set eth0 promisc on/off
  * ifconfig eth0 apr/-arp = ip link set eth0 arp on/off
  * ifconfig etho 10.1.1.120 netmask 255.255.255.0 broadcast 10.1.1.255 = ip addr add 10.1.1.120 /24 broadcast 10.1.1.255 dev eth0
  * arp = ip neigh show
  * arp -i eth0 -d 10.1.1.120 = ip neigh del 10.1.1.120 dev eth0


uname

  * Print system information
  * -a - print all information
  * -s - just give the kernel name
  * -n - print the network node hostname
  * -r - print kernel release (often used in downloading kernel specific version info like docs or source)
  * -v - full kernel version
  * -m - machine hardware name
  * -p - processor type
  * -i - hardware (platform)
  * -o - operating system



tcpdump

  * Allows a real time view/summary of ALL TCP connections on the local system (often referred to as a 'packet sniffer')
  * -c [#] - limits the output of the command to the indicated number of packets
  * -i [interface] [protocol] [port] [src/dest]- limit the output of the command to ONLY the data related to the indicated interface and/or (optionally) the indicated protocol (TCP or UDP), port or source/destination
  * -w [filename] - write the output of the command to a file for later viewing/processing
  * -r [filename] - reads the tcpdump content from an earlier run sent to the indicated file
    * Used most commonly with other utilities like 'cut', 'wc', 'grep', 'sed', 'awk' or other processing commands to review specific data/IP/traffic information


/etc/grub.d

  * Directory containing files for specific types of changes (i.e. titles for boot targets)
  * Each of the files, numbered and by type, are "executed" when you run the appropriate GRUB update command
  * The values of these scripts are then "compiled/concatenated" to form the grub.cfg file, which is how the menu system, defaults and options are read on boot






xfsrestore

  * Used to restore an "xfsdump" backup 
  * -f - file restore method
  * -t - list the files in the backup while restoring the files
  * -i - enter interactive mode to build a file list to restore




debugfs

  * Can be used to recover deleted files under certain circumstances (on unmounted filesystems)


nc

  * netcat, used for a wide variety of TCP/UDP information, can even be used to listen for connections as part of a test
  * -l [port number] - starts listening for incoming connections on that port (provided it is available, if not, the command will fail to start listening)
  * [host/server name] [port number] - the 'client' side of the netcat listener connects to the IP/host/server of the remote system on the indicated port
  * -6 - enable IPv6 connectivity
  * -k - allows the server to continue listening after a client disconnects
  * -u - use UDP (TCP is the default)
  * -w [timeout] - sets a timeout value for the connection to automatically close after connected
  * -z [hostname] [port range] - functions like 'netstat' in that it will display open ports on the indicated hostname



sar

  * Provides similar information to iostat, but displays it as it occurs over time (generally 10 minute intervals)
  * -d - shows disk utilization for detected block devices (CDROM, SCSI, SATA, IDE, LVM, etc) in TOTAL
    * Displays the device, transfers per second, reads per/s, writes per/s, average request size (in sectors), average length of the queue, average time device has taken to serve request (await) and average service time for request (svctime)



pstree

  * Reports a snapshot of the current process tree on a system for the current user (or, as root, the entire system)
  * Shows indented and ascii-formatted graphical connections between parent and child processes in a tree
  * -a - include command line arguments passed to a process
  * -A - use ascii characters for the tree
  * -G - use VT100 line drawing characters (if possible), makes the display and connections visually clearer
  * -h - highlight the current process
  * -p - include PIDs
  * -Z - include SELinux security context for each process (if SELinux enabled)


/etc/udev/rules.d

  * Directory that contains rules that allow you to adjust how these device files are created when detected
  * The numbers in the front of each name determine the order in which these rules are applied
    * The higher the number, the higher the priority (meaning that a rule starting with 60 could be overwritten with the rules in  a file starting with 90)
  * Each file contains a set of key pair like values, comma separated




lsof
* Lists open files and the processes and user associated with them (included are the command run, PID, user, file desc, type, device [number], size, node and name of the file open)
* -n - numeric (IP) output only, no host names will be looked up
* -p - do not attempt to resolve port numbers to application/port names
Please rate this deck of flashcards:


















































