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



















