#!/bin/sh
###############
## Linux+2.sh
###############

UEFI (Unified Extensible Firmware Interface)

POST (Power-On Self Test)
BIOS (Basic I/O System)
Chain loader
GRUB (GRand Unified Bootloader)
Logical Volume Management (LVM)

Extensible Firmware Interface (EFI)
EFI System Partition (ESP)
Unified Extensible Firmware Interface (UEFI).
Basic Input/Output System (BIOS)
GUID Partition Table (GPT).


Industry Standard Architecture (ISA)
Peripheral Component Interconnect (PCI) bus 
I2C (Inter-Integrated Circuit) 
System Management Bus (SMBus)
System Management RAM (SMRAM)
Memory Management Unit (MMU)
Translation Lookaside Buffer (TLB)
Configuration Registers (PCRs)



NMI (nonmaskable interrupt)
LOC (local timer interrupt)
TLB (TLB flush interrupt)
RES (rescheduling interrupt)
CAL (remote function call interrupt)



Global Descriptor Table (GDT)
Page Directory Entry (PDE)
Root System Description Table (RSDT)
Extended BIOS Data Area (EBDA)
ACPI (Advanced Configuration Power Interface)
Procedure Linkage Table (PLT)
runtime link editor (rtld)
Executable and Linkable Format (ELF)
Global Offset Table (GOT) 
return address (RET)
saved frame pointer (SFP)

Input/output controls (IOCTLs)
Advanced Configuration and Power Interface (ACPI) 
Advanced Power Management (APM)
Peripheral Component Interconnect (PCI)
Executable and Linkable Format (ELF)


Integrated Drive Electronics (IDE)
Small Computer Systems Interface (SCSI)
UDF (Universal Disk Format)
Parallel ATA (PATA)
New Technology File System (NTFS)
File Allocation Table (FAT) 


Direct memory addressing (DMA)

Extents File System (XFS)		# XFS was developed by Silicon Graphics (SGI)
Hierarchical File System (HFS).

Hardware Abstraction Layer (HAL) Daemon

Cipher  Block Chaining mode

Public Key Infrastructure (PKI) protocol






The Open Source Initiative (OSI)
Carrier Sense Multiple Access with Collision Avoidance (CSMA/CA)
collision detection (CD) mechanism
Clear-To-Send (CTS)
Request-To-Send (RTS)
Signal Set Identifier (SSID)
Basic Service Set IDentifier (BSSID)
Frame Control Header (FCH),
Basic Service Set IDentifier (BSSID)
Destination Address (DA)
Source Address (SA)
Receiver Address (RA)
Transmitter Address (TA)
Transport
Layer Security (TLS), for TCP-based traffic only, and IP Security (IPsec)

frequency selective surface (FSS)

802.11 (WiFi), 
802.15 (Bluetooth)
802.16 (WiMax)


SMA connectors

list of VoIP transport protocols
_________________________________________________________________
Real-time Transport Protocol (RTP) Insecure transport protocol
RTP Control Protocol (RTCP) Insecure transport control protocol
Secure RTP (SRTP) Secure transport protocol
Secure RTCP (SRTCP) Secure transport control protocol
Zimmermann’s RTP (ZRTP) New secure transport protocol proposal



Orthogonal Frequency-Division Multiplexing (OFDM)
Scalable Orthogonal Frequency-Division Multiple Access (SOFDMA)
Binary Phase-Shift Keying (BPSK)
Quadrature Phase-Shift Keying (QPSK)
Quadrature Amplitude Modulation (QAM)
Complementary Code Keying (CCK) 

synchronous dynamic RAM (SDRAM)
Peripheral Component Interface (PCI)
Read-Only Memory (ROM)
power-on self test (POST)
single data rate (SDR)
Universal Serial Bus (USB)
Video Graphics Adapter (VGA)
Electrically Erasable Programmable ROM
(EEPROM)
Digital Visual Interface (DVI)
double data rate (DDR)
dual inline memory module (DIMM)






ToDS indicates a frame going toward an AP and FromDS indicates a frame transmitted

vdso] The virtual dynamically linked shared object.


          ‘b’  =>            512 ("blocks")
          ‘KB’ =>           1000 (KiloBytes)
          ‘K’  =>           1024 (KibiBytes)
          ‘MB’ =>      1000*1000 (MegaBytes)
          ‘M’  =>      1024*1024 (MebiBytes)
          ‘GB’ => 1000*1000*1000 (GigaBytes)
          ‘G’  => 1024*1024*1024 (GibiBytes)







Power-On Self Test or POST first finds the CPU and then finds the memory.



Start-up values are placed in programmable devices in this order:

system board devices, then the video controller, then the I/O controller.

boot block is the system-wide Master Boot Record.




The firmware performs some power-on self-test operations and detects the processor and memory.




			System Management Interrupt (SMI) handlers
=======================================================================================

_______________________________________________________________________________________
 || >> BIOS boot block code copies the rest of system BIOS code from ROM into DRAM.|| 
======================================================================================

_____________________________________________________________________________
 || >> The first instruction fetched by CPU after reset is located at the || 
 ||  -->>  0xFFFFFFF0 address and is mapped to BIOS firmware ROM		  ||
=============================================================================


________________________________________________________________________________
 || >> This run-time firmware consists of System Management Interrupt (SMI) ||
 ||  -->> handlers that execute in System Management Mode (SMM) of a CPU.	||
===============================================================================

________________________________________________________________________________
 || >> SMRAM is consisting of several regions contiguous in physical memory:|| 
================================================================================

__________________________________________________________________________________
 || >> Compatibility Segment (CSEG) - fixed to addresses 					  || 
 ||  -->> 0xA0000 - 0xBFFFF below 1MB or 									  ||
 ||  -->> Top Segment (TSEG) that can reside anywhere in the physical memory. ||
==================================================================================

________________________________________________________________________
 || >> System BIOS firmware initializes SMRAM, decompresses SMI 	|| 
 ||  -->> handlers stored in BIOS ROM and copies them to SMRAM.		||
=======================================================================


____________________________________________________________________________
 || >> BIOS firmware then should "lock" SMRAM to enable its protection	|| 
 ||		-->> SMI code in modern systems initializes and 				||
 ||		-->> loads The Global Descriptor Table (GDT)					|| 
============================================================================

_______________________________________________________________________
 || >> Then transitions CPU to protected mode without paging.		|| 
 ||  -->> SMI handlers can access 4GB of physical memory.			||
=======================================================================


________________________________________________________________________________
 || >> Operating System execution is suspended for the entire time SMI 		||
 ||  -->> handler is executing till it resumes to protected mode and 		||
 ||	 	-->> restarts OS execution from the point it was interrupted by SMI.||
================================================================================





ioctl structure

Ioctl command values are 32-bit constants.
the last byte is a serial number, and the
       preceding byte(s) give a type indicating the driver.



_______________________________________________________________________
 || >> 		|| 
 ||  -->> 	||
 ||  -->> 	||
=======================================================================

_______________________________________________________________________
 || >> 		|| 
 ||  -->> 	||
=======================================================================

_______________________________________________________________________
 || >> 		|| 
 ||  -->> 	||
 ||  -->> 	||
 ||  -->> 	||
=======================================================================


_______________________________________________________________________
 || >> 		|| 
 ||  -->> 	||
=======================================================================

_______________________________________________________________________
 || >> 		|| 
================================================================================



|| Sector || The lowest level of addressability on a block device.
Disk segment	An ordered set of physically contiguous sectors residing on the same storage object.
Logical volume
A volume that consumes a storage object and exports something mountable.
	================================
		Boot Order Linux System:
	================================
				BIOS
		MBR (Master Boot Record)
			Boot Loader/GRUB
				Kernel
		Initramfs Ram Disk
			Init Sequence
			Command Shell
			X-windows GUI

Boot order
• Power on → BIOS → Boot Loader → Kernel → init → startup services → shell

1. BIOS - loads and executes the MBR boot loader.
2. MBR - First sector of boot disk. loads and executes the GRUB boot loader.
3. GRUB - loads and executes Kernel and initrd images.
4. KERNEL - mounts fs executed /usr/sbin/init
5. INIT - decides run level
6. RUN LEVEL - starts the system processes


>> The chain loader also mounts initrd





 || #!/bin/sh 	||	The Bourne shell
 || #!/bin/csh 	|| 	The C-shell
 || #!/bin/tcsh || 	The enhanced C-shell
 || #!/bin/sed 	|| The stream editor

 || #!/usr/bin/awk  || The awk programming language
 || #!/usr/bin/perl || The Perl programming language


/dev/ptmx (UNIX 98 master clone device)
/dev/pts/* (UNIX 98 slave devices)
/dev/pty[p-za-e][0-9a-f] (BSD master devices)
/dev/tty[p-za-e][0-9a-f] (BSD slave devices)


PID 1 = /sbin/init

/etc/shells		## List of valid login shells.
echo $(tty)



 || /etc/securetty || file which lists terminals from which root can log in


0 Standard input (stdin)
1 Standard output (stdout)
2 Standard error (stderr)


The shell provides the standard I/O capability, offering three default file descriptors to running programs:
## =========================================================================================================== ##
• 0). Standard input (STDIN) 	|| Input stream  || By default attached to the keyboard.
• 1). Standard output (STDOUT)  || Output stream || Normal program output. By default, this is the screen.
• 2). Standard error (STDERR) 	|| Output stream || Meant for error messages. By default, this is the screen.
## =========================================================================================================== ##


#### ========================================================== ####
 || Cmd 2>&1 || Both output and errors to file					 ||
 || Cmd 2>   || Redirects error output.							 ||
 || Cmd 1>>	 || Redirect and append stdout to file. 			 ||
 || Cmd &>	 ||	Redirect both stdout and stderr to file.		 ||
 || Cmd 1>&2 ||	Standard output to standard error.				 ||
 || Cmd >&   || Redirect both stdout and stderr to file. 		 ||
 || Cmd >>&  || Append both stdout and stderr to file. 			 ||
#### ========================================================== ####
 || Cmd >file 2>&1	 || Redirects stderr to stdout then to file. || 
 || Cmd1 | Cmd2		 || Pipe stdout to cmd2						 ||
 || Cmd1 |& Cmd2     || Pipe stdout and stderr to cmd2			 ||
 || Cmd1 2>&1 | Cmd2 ||	Pipe stdout and stderr to cmd2 			 ||
#### ========================================================== ####


#### ================== Comparison operators: ======================= ####
 || =~ || Matching regular expression. [regex]					  	   ||
 || !~ || Not matching regular expression. [regex]					   ||
 ||  = || Equal to. [number, size, percent, string, string list]	   ||
 || != || Not equal to. [number, size, percent, string, string_list]   ||
 || >= || Greater than or equal to. [number, size, percent]			   ||
 ||  > || Greater than. [number, size, percent]					  	   ||
 || <= || Less than or equal to. [number, size, percent]		       ||
 || <  || Less than. [number, size, percent]						   ||
 || ===================================================================||
####														  		  ####



!?string?	 || Run command containing string of the most recent command that contains a particular string of characters.
!!			 || Run previous command.
!n			 || Run command number


## ========================================================== ##
echo $!				# process id of last background command
echo $SHELL			# Default shell used
## ========================================================== ##

HISTCONTROL		# controls how your command history is stored.

$$              # The current process ID 
$?              # exit status of last command 

!n     			# Refer to command line n.
!123			# execute the 123rd command in bash history
!!				# execute the last command in bash history
!!:gs/hda/sda	# prevous command, replacing hda with sda
!!:s/one/two	# prevous command, replacing the first insidance of one with two
"!$"			# represents the last argument of the prevous command
!ssh			# execute the last command that started with ssh





$?			# show the status of the last command which was run
=============
0	# Successful
1	# Failed
2	# Synatx error







_________________________________________
|| ? || ___ ## Matched at most once. ||
|| * || ___ ## Zero or more times.	 ||
|| + || ___ ## One or more times.	 ||
|| {n}|| __ ## Exactly n times.	 	 ||
||{n,}|| __ ## N or more times.	 	 ||
||{,m}|| __ ## Max of m times.		 ||
||{n,m}|| _	## At least n times		 ||
=========================================

===================================================================
[\^$.|?*+()		## special characters any other will match themselves 
===================================================================

========================================================================
|| \ ||		## Escapes special characters and treat as literal 
|| * ||		## Repeat the previous item zero or more times 
|| . ||		## Single character (except line break characters) 
||.* ||		## Match zero or more characters 
|| ^ ||		## Start of a line/string 
|| $ ||		## The end of a line/string 
||.$ ||		## Single character at the end of line/string 
||^$ ||		## Line with a single space 
========================================================================
||^[A‐Z]||		## Any line beginning with any char from A to Z 
========================================================================



#######################################################################################################
command1 || command2		# command2 will be executed if command1 does not successfully complete 
							# if command1 is successful command2 won't be run 
							# This is called a logical OR.
#######################################################################################################



		# 
		# 
		# 
		# 

cmd > file			# Send STDOUT to file . $ 
cmd 1> file			# Send STDERR to file
cmd 2> file			# Send both STDOUT and STDERR to file . $ 
cmd > file 2>&1		# Send both STDOUT and STDERR to file .
cmd > file 2> file	# Send both STDOUT and STDERR to file .
cmd < file			# Receive STDIN from file
cmd >> file			# Append STDOUT to file 
cmd 1>> file		# Append STDOUT to file
cmd 2>> file		# Append STDERR to file
cmd >> file 2>&1	# Append both STDOUT and STDERR to file .
cmd1 | cmd2			# Pipe STDOUT from cmd1 to cmd2 .
cmd1 2>&1 | cmd2	# Pipe STDOUT and STDERR from cmd1 to cmd2 .
cmd1 | tee file1 | cmd2		# Pipe STDOUT from cmd1 to cmd2 while simultaneously writing it to file1 using tee




$IFS	## The Internal Field Separator that is used for word splitting after 
		## expansion and to split lines into words with the read builtin command.

## ================================================================== ## 
The PS1 environment variable specifies the characters used to create the shell prompt.
## ================================================================== ## 






ls −l | grep '[[:upper:]][[:digit:]]'		## any uppercase letter followed by any digit.
=========================================================================================================
grep -h		## Display matched lines, but do not include filenames for multiple file input.
grep -i		## Ignore uppercase and lowercase distinctions, allowing abc to match both abc and ABC .
grep -n		## Display matched lines prefixed with their line numbers.
=========================================================================================================
rm file[^7]		## performs a logical "not" removing file1,file2,file3 etc and saving file7
=========================================================================================================
cat myfile | grep '^s.*n$'		## lines starting with an "s" and ending with an "n"
=========================================================================================================
=========================================================================================================
grep -v '^$' /etc/nsswitch.conf | grep -v '^#'         # select only the lines from /etc/nsswitch.conf that are not blank and do not contain a comment
=========================================================================================================
grep '^Linux' file1		## Display all lines from file1 where the string Linux appears at the start of the line:
grep 'x$' file1			## Display lines in file1 where the last character is an x :
grep '^[^0-9]' file1	## Display all lines from file1 beginning with any single character other than a digit:
grep -c '^$' file1		## Display the number of empty lines in file1 by finding lines with nothing between the beginning and the end:
grep '^null$' file1			## Display all lines from file1 containing only the word null by itself:
grep '[Ll]inux' file1			## Display all lines from file1 containing Linux , linux , TurboLinux , and so on:
grep '[0-9][0-9][0-9]' file1	## Display all lines from file1 that contain three adjacent digits:
grep '\<[Ll]inux\>' file1		## Display all lines from file1 that contain the whole word Linux or linux , but not LinuxOS or TurboLinux :
grep '.....' file1				## Display all lines from file1 with five or more characters on a line (excluding the newline character):
grep '.' file1					## Display all nonblank lines from file1 (i.e., that have at least one character):
grep '\.' file1					## Display all lines from file1 that contain a period (normally a metacharacter) using an escape:
grep 'abcc*' file1			## Display all lines from file1 that contain abc , abcc , abccc , and so on, but not ab :
grep '[0-9][0-9][0-9]*' file1		## Display all lines from file1 that contain 
grep '[0-9]\{2,\}' file1			## two or more adjacent digits:
grep 'file[12]\?' file1			## Display lines from file1 that contain file (because ? can match zero occurrences), file1 , or file2 :
grep '[0-9]\+' file1			## Display all lines from file1 containing at least one digit:
grep '^1\{3,5\}$' file1			## Display all lines from file1 that contain 111 , 1111 , or 11111 on a line by itself:
grep '\(abc\)\{2,\}' file		## Display all lines of file that contain any repeated sequence of abc ( abcabc , abcabcabc , and so on):
grep '\<[0-9]\{3,5\}\>' file1				## Display all lines from file1 that contain any three-, four-, or five-digit number:
grep -E '[Hh]appy|[Ss]ad|[Aa]ngry' file1	## Display all lines from file1 that contain Happy , happy , Sad , sad , Angry , or angry :

grep '[A-Za-z]'			## Match any letter:
grep '[^0-9A-Za-z]'		## Match any symbol (not a letter or digit):
grep '[A-Z][a-z]*'		## Match an uppercase letter, followed by zero or more lowercase letters:


grep -i             # case insensitive

grep ^              # begining of the line
grep $              # end of the line
egrep'^(b|d)'       # anything that begins with either b or d
egrep '^[a-k]'      # anything that starts with a-k
egrep'^([a-k]|[A-K])'
egrep
grep -r eth /etc/*
grep -r eth[01] /etc/*
grep -E "(\.edu).*127" /etc/*
grep -E "(\.edu).*127" /etc/*
egrep -r 127. /etc/*
egrep -r 127.0.0.1: /etc/*

grep 'FOO\|BAR'                                     # Find lines that contain FOO, and lines that contain BAR
grep 'FOO$'                                         # Find lines that end with FOO
grep '^[0-9]'                                       # Find lines that start with a number
grep '^FOO'                                         # Find lines that start with FOO



grep-available -P -F Description 
grep-available -P 
grep-available dpkg
grep-status -P -e 'apt|dpkg'
grep-available -F Maintainer -s Depends 'ajk@debian.org'
grep-available -F Maintainer -s Package,Depends \
         'ajk@debian.org'
grep-available -F Maintainer 'ajk@debian.org' \
          -a -F Depends libc6 -s Package,Depends
grep-dctrl -n -s Maintainer '' Sources | sort | \
         uniq -c | sort -nr

grep-available -c -FMaintainer \
         "`grep-available -sMaintainer -n -PX dctrl-tools`"

grep-status -FStatus -sInstalled-Size,Package -n \
         "install ok installed" -a -FInstalled-Size --gt 0 \
         | paste -sd "  \n" | sort -n

grep-dctrl -s Package -F Build-Depends,Build-Depends-Indep \
         quilt /var/lib/apt/lists/*Sources

Print the names of all files in /etc that start with `p' and end with `d':

       run-parts --list --regex '^p.*d$' /etc


sed s/pattern/replacement/[flags]
sed s/pattern/replacement/n		## Replace n th instance of pattern ; the default is 1.
sed s/pattern/replacement/p		## Print the line if a successful substitution is done.
sed s/pattern/replacement/w file	## Print the line to file if a successful substitution is done.


:g/Local	|| Searches for the word Local and prints every occurrence of that line from the file.

___________________	  _______________________________________________________
:g/Local/s//Remote	|| Substitutes the fi rst occurrence of the word Local on
===================	|| every line of the fi le with the word Remote.
					  ===========================================================
_____________________	  _______________________________________________________
:g/Local/s//Remote/g	|| Substitutes every occurrence of the word Local with
=====================	|| the word Remote in the entire file.
						  =======================================================
______________________	  _______________________________________________________
:g/Local/s//Remote/gp	|| Substitutes every occurrence of the word Local with the
======================	|| word Remote in the entire fi le, and then prints each line
						  =======================================================


sed 10q		## print first 10 lines of file (emulates behavior of "head")
sed q		## print first line of file (emulates "head -1")


sed '3,5d' file1		## Delete lines 3 through 5 of file1:
sed '/^#/d' file1		## Delete lines of file1 that contain a # at the beginning of the line:
sed y/abc/xyz/			## Every instance of a is translated to x , b to y , and c to z .
sed 's/^$/@/' file1		## Write the @ symbol for all empty lines in file1 (that is, lines with only a newline character but nothing more):
sed 's/"//g' file1		## Remove all double quotation marks from all lines in file1:



sed 's/^[ \t]*//'    	## delete leading whitespace (spaces, tabs) from front of each line aligns all text flush left
sed 's/[ \t]*$//'		## delete trailing whitespace (spaces, tabs) from end of each line
sed 's/^/     /'		## insert 5 blank spaces at beginning of each line (make page offset)

sed 's/foo/bar/'             # replaces only 1st instance in a line
sed 's/foo/bar/4'            # replaces only 4th instance in a line
sed 's/foo/bar/g'            # replaces ALL instances in a line
sed '$!N;$!D'		## print the last 2 lines of a file (emulates "tail -2")



sed 's/\(.*\)foo\(.*foo\)/\1bar\2/' ## replace the next-to-last case
sed 's/\(.*\)foo/\1bar/'            ## replace only the last case
sed 's/^[ \t]*//;s/[ \t]*$//'		## delete BOTH leading and trailing whitespace from each line



		## 



sed '/baz/s/foo/bar/g'		## substitute "foo" with "bar" ONLY for lines which contain "baz"
sed '/baz/!s/foo/bar/g'		## Substitute "foo" with "bar" EXCEPT for lines which contain "baz"


sed -e :a -e '$q;N;11,$D;ba'		## print the last 10 lines of a file (emulates "tail")

## ================================================================ ##
sed '$!d'		## print the last line of a file (emulates "tail -1")
sed -n '$p'		## print the last line of a file (emulates "tail -1") method 2
## ================================================================ ##

## ============================================================================== ##
echo -e "\t\tPrint The Next-To-The-Last Line of A File"
## ============================================================================== ##
sed -e '$!{h;d;}' -e x             		## for 1-line files, print blank line
sed -e '1{$q;}' -e '$!{h;d;}' -e x 		## for 1-line files, print the line
sed -e '1{$d;}' -e '$!{h;d;}' -e x 		## for 1-line files, print nothing
## ============================================================================= ##


## ========================================================================= ##
sed -n '/regexp/p'		## print only lines which match regular expression
sed '/regexp/!d'        ## method 2
## ========================================================================= ##


## ===================================================================== ##
sed -n '/regexp/!p'		## print only lines which do NOT match regexp
sed '/regexp/d'         ## method 2, simpler syntax
## ===================================================================== ##


### =============================================================================== ###

1,10{
s/"/(/3			## replace the third and fourth double quotation marks with ( and )
s/"/)/4			## on lines 1 through 10 in file1. Make no changes from line 11 to the end of the file.
}

### =============================================================================== ###


sed /^$/d				## Delete blank lines:
sed /#keepme/!d			## Delete any line that doesn’t contain #keepme :
sed /^[ Tab]*$/d		## Delete lines containing only whitespace (spaces or Tabs)
sed /^[[:blank:]]*$/d	## sed also supports character classes
sed /^[\.#]/d			## Delete lines beginning with periods or pound signs:
sed 11,20s/abc/def/g	## Substitute def for abc from line 11 to 20, wherever it occurs on the line:


sed -n '10,20p' <filename>	## Print all the lines between 10 and 20 of a file


sed 's/Windows/Linux/' opsys > newopsys
sed 's/Windows/Linux/g' opsys > newopsys          #
sed 's/writable = yes/writable = no/g' /etc/samba/smb.conf > ~/smb.conf
sed -e 's/oo/00' file.txt
sed -re 's/^(b|b)/C/' file.txt




column -t				## Align columns




paste -s -d" " 		## Convert a list into a single line



sed '<$Input>/d'		## delete all lines containing "Arse"
sed /^$/d      			## Compress blank lines
sed 's/FOO$//'			## Find lines that end with FOO, and delete FOO
sed '/^FOO/i\ '  		## Find lines that start with FOO, and insert a line before
sed '/^FOO/a\ '  		## Find lines that start with FOO, and insert a line after






sed 's/\b\(.\)/\u\1/g'                              # Capitalize the first letter of every word
sed -e 's/^/<$Input>/'                              # Add FOO to the beginning of each line
sed -e 's/$/<$Input>/'                              # Add FOO to the end of each line
sed '/FOO/I,+12 d'                                  # Find lines that contain FOO, and delete that and the next 12 lines
sed '/FOO/,${D}'                                    # Find lines that contain FOO, and delete to the end of file
sed 's/FOO/\n&/g'                                   # Find lines that contain FOO, and insert a new line and FOO

sed '1N;N;/\(.*\n\)\{2\}.*FOO/P;$d;D'               # Find lines that contain FOO, and print the second line before that
sed '/^FOO/{n;d;}'                                  # Find lines that start with FOO, and delete the following line
printf '%s\n' 'g/^FOO/-1d' w | ed -s                # Find lines that start with FOO, and delete the previous line
sed -e :a -e '$!N;s/\nFOO/ /;ta' -e 'P;D'           # Find lines that start with FOO, insert a space and append to the previous line
## ====================================================================================== ##
sed -n '/FOO/,$p'                                   # Print from FOO to the end of the file
sed s/FOO.*//                                       # Print from FOO to the end of the line
sed -n '5,/^$/p'                                    # Print from the 5th line to the first blank line
sed -n '/FOO/,/BAR/p'                               # Print lines between FOO and BAR
sed -e '/./{H;$!d;}' -e 'x;/FOO/!d;'                # Print paragraphs that contains FOO 
## ====================================================================================== ##
for x in $(cat tmp); do rm $x; done                 # Remove all files in tmp
sed 's/[A-Z]\{2\},//g'                              # Remove any 2 capital letters followed by a comma
sed '/^$/d'                                         # Remove blank lines
sed 's/[0-9]\{2\}\/[0-9]\{2\}\/[0-9]\{2\}//g'       # Remove dates (mm/dd/yy)
cat -s                                              # Remove double spacing
sed 's/^....//'                                     # Remove first 4 characters from each line
sed '1,5d'                                          # Remove first 5 lines
sed 's/^[ \t]*//;s/[ \t]*$//'                       # Remove leading and trailing whitespace from each line
sed 's/^[ \t]*//'                                   # Remove leading whitespace from each line
sed '/FOO/,/BAR/d'                                  # Remove lines between FOO and BAR
sed '/[[:blank:]]/!d'                               # Remove lines that contain a single word
printf '%s\n' 'g/FOO/d\' '-d' w | ed -s             # Remove lines that contain FOO and the previous line
sed '/@.*@/d'                                       # Remove lines that contain two @ symbols
sed '/[0-9]$/'                                      # Remove lines that contain a number
sed '/[0-9]$/d'                                     # Remove lines that end with a number
sed '/FOO$/d'                                       # Remove lines that end with FOO
sed '/^[0-9]/d'                                     # Remove lines that start with a number
sed '/^FOO/d'                                       # Remove lines that start with FOO

sed 's/[ \t]*$//'                                   # Remove trailing whitespace from each line

sed 's/\.\.\.//g'                                   # Replace 3 periods with nothing
sed 's/FOO/BAR/g'                                   # Replace FOO with BAR
sed '/TEST/!s/FOO/BAR/g'                            # Replace FOO with BAR, except on lines that contain TEST
sed '/TEST/s/FOO/BAR/g'                             # Replace FOO with BAR, on lines that contain TEST
sed 's/FOO//g'                                      # Replace FOO with nothing

sed 's/\([^,]*,\)\{7\}[^,]*,/&\n/g'                 # Replace the 8th comma with a new line


## ====================================================================================== ##
sort -n -u -t . -k 1,1 -k 2,2 -k 3,3 -k 4,4         # Sort IPs
sort ‐t. ‐k1,1n ‐k2,2n ‐k3,3n ‐k4,4n         # Sort IPv4 ip addresses 
## ====================================================================================== ##
sort −t : −k 4 −k 1 −g /etc/passwd | more


## ====================================================================================== ##
sort −k		## Specify which column you would like to sort by
sort -n		## sort numerically (not alpha)
sort ­­--numeric­-sort		# sort option used to sort by number sort ­n

sort -k2	## Sort by the second column

## ====================================================================================== ##
sort -g || --general-numeric-sort		## compare according to general numerical value
sort -n || --numeric-sort				## compare according to string numerical value
sort --human-numeric-sort				## compare human readable numbers (e.g., 2K 1G)
## ====================================================================================== ##
ps aux | sort -k 6 -n					## Sort all processes on the system by resident size ( RSS in ps ):


## ====================================================================================== ##



## ====================================================================================== ##
sed "s/$FOO./$FOO/g"                                # Variables - use double quotes with sed or grep
sed 's/string1/string2/g'                    # Replace string1 with string2 
sed ‐i 's/wroong/wrong/g' *.txt              # Replace a recurring word with g 
sed 's/\(.*\)1/\12/g'                        # Modify anystring1 to anystring2 
sed '/<p>/,/<\/p>/d' t.xhtml                 # Delete lines that start with <p> 
                                             # and end with </p> 
sed '/ *#/d; /^ *$/d'                        # Remove comments and blank lines 
sed 's/[ \t]*$//'                            # Remove trailing spaces (use tab as \t) 
sed 's/^[ \t]*//;s/[ \t]*$//'                # Remove leading and trailing spaces 
sed 's/[^*]/[&]/'                            # Enclose first char with [] top‐>[t]op 
sed = file | sed 'N;s/\n/\t/' > file.num     # Number lines on a file 
sed 's/.$//' dosfile.txt > unixfile.txt                  # DOS to UNIX 

sed ‐n p unixfile.txt > dosfile.txt 		# Convert Unix to DOS newlines within a Windows environment. Use sed or awk from mingw or cygwin.
ifconfig $INTERFACE | sed '/.*inet addr:/!d;s///;s/ .*//'




# <<{!}================================================================================================================{!}>> #
## <<{+}-----------------------------------------------------------------------------------------------------------------{+} ##
# <<{!}================================================================================================================{!}>> #





pcresyntax
pcrepattern

## ====================================================================================== ##
awk '!x[$0]++' <file>				# Remove duplicate entries in a file without sorting.
sed -n '10,20p' <filename>			# Print all the lines between 10 and 20 of a fil
awk '/FOO/{f=1} (!f || f>2){print} (f && /BAR/){f++}'   # Remove lines from FOO and the second BAR
awk '$2 !~ /[a-z]/'                                 # Remove lines in the second columns that contain characters
for a in z*; do grep -vE '^[\/\#\(\_\[\|\<\.\,\`\%\@]' "$a" > "$a.tmp"; mv "$a.tmp" "$a"; done    
## ====================================================================================== ##
awk '{print $2 " " $1}'                             # Print the second column, insert a space, then the first column                                                    # Remove lines starting with various non-characters
awk '$2 !~ /[a-z]/'                                 # Remove lines that contain [a-z] in the second column
awk 1 unixfile.txt > dosfile.txt  			# UNIX to DOS (with a cygwin shell) 
awk '{sub(/\r$/,"");print}' dosfile.txt > unixfile.txt   # DOS to UNIX 
awk '{sub(/$/,"\r");print}' unixfile.txt > dosfile.txt   # UNIX to DOS 
## ====================================================================================== ##
awk '{ print $2, $1 }' file					# Print and inverse first two columns 
awk '{printf("%5d : %s\n", NR,$0)}' file	# Add line number left aligned 
awk '{print FNR "\t" $0}' files				# Add line number right aligned 
awk NF test.txt						# remove blank lines (same as grep '.') 
awk 'length > 80'				# print line longer than 80 char)
awk '{ print NR" "$0 }'			# print lines in the text file
## ====================================================================================== ##
awk -F : '/mike/ {print $4}' /etc/passwd
awk -F: '($2 == "") {print $1}' /etc/shadow			# find accounts with null passwords
cut -f3 -d: /etc/passwd | sort -n | uniq -c | awk '!/ 1 / {print $2}'		# duplicate UIDs

sort -t: -k3 -n /etc/passwd

awk -F: '($3 == 0) {print $1}' /etc/passwd		# display the usernames of all UID 0 accounts:
## ====================================================================================== ##



























Signal Number 	Meaning
HUP		 1 		Hangup, reread configuration.
INT 	 2 		Interrupt, stop running.
KILL 	 9 		Exit immediately.
TERM 	15 		Terminate nicely.
TSTP 	20 		Stop executing.


$?

Keystroke Full Name Meaning

 || Ctrl+F || 	Character forward Go forward one character.
 || Ctrl+B || 	Character backward Go backward one character.
 || Alt+F  || 	Word forward Go forward one word.
 || Alt+B  || 	Word backward Go backward one word.
 || Ctrl+A || 	Beginning of line Go to the beginning of the current line.
 || Ctrl+E || 	End of line Go to the end of the line.
 || Ctrl+L || 	Clear screen Clear screen and leave line at the top of the screen.

 || Ctrl+D|| 	 Delete current Delete the current character.
 || Ctrl+T|| 	 Transpose character Switch positions of current and previous characters.
 || Alt+T || 	 Transpose words Switch positions of current and previous words.
 || Alt+U || 	 Uppercase word Change the current word to uppercase.
 || Alt+L || 	 Lowercase word Change the current word to lowercase.
 || Alt+C || 	 Capitalize word Change the current word to an initial capital.
 || Ctrl+V|| 	 Insert special character Add a special character. For example, to add a Tab character, press Ctrl+V+Tab.

Ctrl+K Cut end of line Cut text to the end of the line.
Ctrl+U Cut beginning of line Cut text to the beginning of the line.
Ctrl+W Cut previous word Cut the word located behind the cursor.
Alt+D Cut next word Cut the word following the cursor.
Ctrl+Y Paste recent text Paste most recently cut text.
Alt+Y Paste earlier text Rotate back to previously cut text and paste it.
Ctrl+C Delete whole line Delete the entire line.




 || Ctrl+W || 	Erase a word
 || Ctrl+U || 	Erase a line
 || Ctrl+A || 	Move to the start of the line
 || Ctrl+E || 	Move to the end of the line
 || Ctrl+B || 	Move back one character
 || Ctrl+F || 	Move forward one character
 || Ctrl+u || 	Delete from the cursor to the beginning of the line.
 || Ctrl+K || 	Delete from the cursor to the end of the line.
 || Ctrl+W || 	Delete from the cursor to the start of the word.
 || Ctrl+Y || 	Pastes text from the clipboard.
 || Ctrl+L || 	Clear the screen leaving the current line at the top of the screen.
 || Ctrl+R || 	Reverse incremental search of history
 || Ctrl++

 ||        ||	## =============================================== ##
 || Alt+P  || 	Reverse non-incremental search of history
 || Alt+B  || 	Move back one word
 || Alt+F  || 	Move forward one word
 ||        ||	## =============================================== ##
 || Esc+Del|| 	Delete previous word
 ||        ||	
 ||        ||	## =============================================== ##

 || Shift+Ctrl+F ||	
 || Shift+Ctrl+N ||	
 || Shift+Ctrl+T ||	
 || Shift+Ctrl+ ||	
 || Shift+Ctrl+ ||	
 || Shift+Ctrl+ ||	

Scroll up by one line
Shift+Ctrl+Up
Scroll down by one line
Shift+Ctrl+Down

Switch to Previous Tab
Ctrl+Page Up
Switch to Next Tab
Ctrl+Page Down

New Tab
Shift+Ctrl+T
New Window
Shift+Ctrl+N
Close Tab
Shift+Ctrl+W
Close Window
Shift+Ctrl+Q


Alt+F2


/proc/interrupts
              This  is  used to record the number of interrupts per CPU per IO device.

• Interrupts (IRQs) allow peripherals to interrupt the CPU.
• I/O addresses are locations in the processor’s memory map for hardware
devices.



#### ====================== ####
 || ttyS0 (COM1) || 3f8 || 4 ||
 || ttyS1 (COM2) || 2f8 || 3 ||
 || ttyS2 (COM3) || 3e8 || 4 ||
 || ttyS3 (COM4) || 2e8 || 3 ||
 || ======================== ||
 || lp1 (LPT2) ||278-27f|| 5 ||
 || fd0, fd1   ||3f0-3f7|| 6 ||
 || ======================== ||
#### ====================== ####
	   \\==============//
		 \\__________//
		   \\______//
			 \\__//
				



		# 
		# 
		# 
		# 


three types of USB host controllers:
• Open Host Controller Interface (OHCI)
• Universal Host Controller Interface (UHCI)
• Enhanced Host Controller Interface (EHCI)



When you turn on a computer, the firmware
performs a power-on self-test (POST), initializes hardware to a known operational state,
loads the boot loader from the boot device (typically the first hard disk), and passes control
to the boot loader, which in turn loads the OS.


The motherboard’s firmware resides in 
Electronically Erasable Programmable Read-Only Memory (EEPROM), aka flash memory



CHS geometry		#cylinder/head/sector (CHS) geometry.





_________________________________________________________________
mknod /dev/sda				## 								  ||
mknod /dev/sda1				## If mounting filesystems fails: ||
fdisk -l /dev/sda			## ============================== ||
fsck -y /dev/sda1						## 					  ||
mount -t ext3 /dev/sda1 /mnt/sysimage	##					  ||
chroot /mnt/sysimage					## 					  ||
=================================================================




cat (hd1, 0)/etc/fstab






==================================================================
>> To load a multiboot kernel and modules in Syslinux, put 
	--> mboot.c32 (from com32/modules) in the boot directory
==================================================================
>> Then, load it as the "kernel" in the configuration file.
==================================================================
>> load a Xen VMM, xenlinux and an initrd:
===================================================================


======================================================================================================

DEFAULT mboot.c32 xen.gz dom0_mem=15000 nosmp noacpi --- linux.gz console=tty0 root=/dev/hda1 --- initrd.img
======================================================================================================


as a choice in a menu:

======================================================================================================

LABEL Xen
  KERNEL mboot.c32
  APPEND xen.gz dom0_mem=15000 nosmp noacpi --- linux.gz console=tty0 root=/dev/hda1 --- initrd.img

======================================================================================================


/boot/grub/initrd.img-3.16.7-parrot-amd64
/boot/grub/vmlinuz-3.16.7-parrot-amd64
/boot/grub/device.map

======================================================================================================

/etc/default/grub
/boot/grub/device.map
/boot/grub/grub.cfg
/boot/grub/grub.conf
/boot/grub/menu.lst
/etc/grub.d/


===================================================================
GRUB_DISTRIBUTOR="$(sed 's, release .*$,,g' /etc/system-release)"
===================================================================

ls (hd0,msdos1)/grub2/grub.cfg

grub> cat (hd0,msdos1)/grub2/grub.cfg
grub> search.file /grub2/grub.cfg

grub> cat (hd0,msdos2)/etc/fstab


grub2-mkconfig -o /boot/grub2/grub.cfg









make dep
make zImage
make zdisk
make zlilo
make bzImage
cp arch/i386/boot/bzImage /boot/bzImage-
KERNEL_VERSION
cp System.map /boot/System.map-
KERNEL_VERSION
ln -s /boot/System.map-KERNEL_VERSION



make config
make menuconfig
make xconfig
Unpack the tarball in /usr/src directory
bzip2 -dc linux-2.4.0.tar.bz2 | tar xvf –
Configuring the kernel with interactive, menu
or X window interface.
===================================================================




_______________________________________________________________________
 || >> 		|| 
 ||  -->> 	||
=======================================================================

_______________________________________________________________________
 || >> 		|| 
 ||  -->> 	||
=======================================================================

_______________________________________________________________________
 || >> 		|| 
 ||  -->> 	||
=======================================================================





======================================================================================================

 || >> Boot scripts These are included in the initramfs image and normally executed during kernel boot  in  the  early  user-space
    -->> before the root partition has been mounted.
======================================================================================================

_______________________________________________________________________
 || >> 		|| 
 ||  -->> 	||
=======================================================================

____________________________________________________________________
 || >> dmesg is used to examine or control the kernel ring buffer. || 
===================================================================


_________________________________________________
 || >> initrd - boot loader initialized RAM disk ||
=================================================


_______________________________________________________________________________________________
 || >> /dev/initrd  is  a  read-only block device.  This device is a RAM disk that 
 || is initialized (e.g., loaded) by the boot loader before the kernel is started.			
================================================================================================

_______________________________________________________________________________________________
 || >> first  boot-up phase, the kernel starts up and mounts an initial root filesystem from the contents of
       /dev/initrd (e.g., RAM disk initialized by the boot loader).  In the second phase, additional drivers or other
       modules  are loaded from the initial root devices contents.  After loading the additional modules, a new root
       filesystem (i.e., the normal root filesystem) is mounted from a different device.
======================================================================================================




man 7 bootparam


======================================================================================================
MANAGER BOOTUP
======================================================================================================
At boot, the system manager on the OS image is responsible for initializing the required file systems, services and drivers that are necessary for operation
of the system. On systemd(1) systems, this process is split up in various discrete steps which are exposed as target units. (See systemd.target(5) for
detailed information about target units.) The boot-up process is highly parallelized so that the order in which specific target units are reached is not
deterministic, but still adheres to a limited amount of ordering structure.

When systemd starts up the system, it will activate all units that are dependencies of default.target (as well as recursively all dependencies of these
dependencies). Usually, default.target is simply an alias of graphical.target or multi-user.target, depending on whether the system is configured for a
graphical UI or only for a text console. To enforce minimal ordering between the units pulled in, a number of well-known target units are available, as listed
on systemd.special(7).

The following chart is a structural overview of these well-known units and their position in the boot-up logic. The arrows describe which units are pulled in
and ordered before which other units. Units near the top are started before units nearer to the bottom of the chart.

    local-fs-pre.target
             |
             v
    (various mounts and   (various swap   (various cryptsetup
     fsck services...)     devices...)        devices...)       (various low-level   (various low-level
             |                  |                  |             services: udevd,     API VFS mounts:
             v                  v                  v             tmpfiles, random     mqueue, configfs,
      local-fs.target      swap.target     cryptsetup.target    seed, sysctl, ...)      debugfs, ...)
             |                  |                  |                    |                    |
             \__________________|_________________ | ___________________|____________________/
                                                  \|/
                                                   v
                                            sysinit.target
                                                   |
              ____________________________________/|\________________________________________
             /                  |                  |                    |                    \
             |                  |                  |                    |                    |
             v                  v                  |                    v                    v
         (various           (various               |                (various          rescue.service
        timers...)          paths...)              |               sockets...)               |
             |                  |                  |                    |                    v
             v                  v                  |                    v              rescue.target
       timers.target      paths.target             |             sockets.target
             |                  |                  |                    |
             \__________________|_________________ | ___________________/
                                                  \|/
                                                   v
                                             basic.target
                                                   |
              ____________________________________/|                                 emergency.service
             /                  |                  |                                         |
             |                  |                  |                                         v
             v                  v                  v                                 emergency.target
         display-        (various system    (various system
     manager.service         services           services)
             |             required for            |
             |            graphical UIs)           v
             |                  |           multi-user.target
             |                  |                  |
             \_________________ | _________________/
                               \|/
                                v
                      graphical.target

Target units that are commonly used as boot targets are emphasized. These units are good choices as goal targets, for example by passing them to the
systemd.unit= kernel command line option (see systemd(1)) or by symlinking default.target to them.









IN THE INITIAL RAM DISK (INITRD)
The initial RAM disk implementation (initrd) can be set up using systemd as well. In this case, boot up inside the initrd follows the following structure.

The default target in the initrd is initrd.target. The bootup process begins identical to the system manager bootup (see above) until it reaches basic.target.
From there, systemd approaches the special target initrd.target. If the root device can be mounted at /sysroot, the sysroot.mount unit becomes active and
initrd-root-fs.target is reached. The service initrd-parse-etc.service scans /sysroot/etc/fstab for a possible /usr mount point and additional entries marked
with the x-initrd.mount option. All entries found are mounted below /sysroot, and initrd-fs.target is reached. The service initrd-cleanup.service isolates to
the initrd-switch-root.target, where cleanup services can run. As the very last step, the initrd-switch-root.service is activated, which will cause the system
to switch its root to /sysroot.

                                                   : (beginning identical to above)
                                                   :
                                                   v
                                             basic.target
                                                   |                                 emergency.service
                            ______________________/|                                         |
                           /                       |                                         v
                           |                  sysroot.mount                          emergency.target
                           |                       |
                           |                       v
                           |             initrd-root-fs.target
                           |                       |
                           |                       v
                           v            initrd-parse-etc.service
                    (custom initrd                 |
                     services...)                  v
                           |            (sysroot-usr.mount and
                           |             various mounts marked
                           |               with fstab option
                           |              x-initrd.mount...)
                           |                       |
                           |                       v
                           |                initrd-fs.target
                           \______________________ |
                                                  \|
                                                   v
                                              initrd.target
                                                   |
                                                   v
                                         initrd-cleanup.service
                                              isolates to
                                        initrd-switch-root.target
                                                   |
                                                   v
                            ______________________/|
                           /                       v
                           |        initrd-udevadm-cleanup-db.service
                           v                       |
                    (custom initrd                 |
                     services...)                  |
                           \______________________ |
                                                  \|
                                                   v
                                       initrd-switch-root.target
                                                   |
                                                   v
                                       initrd-switch-root.service
                                                   |
                                                   v
                                         Transition to Host OS

MANAGER SHUTDOWN
System shutdown with systemd also consists of various target units with some minimal ordering structure applied:

                                      (conflicts with  (conflicts with
                                        all system     all file system
                                         services)     mounts, swaps,
                                             |           cryptsetup
                                             |          devices, ...)
                                             |                |
                                             v                v
                                      shutdown.target    umount.target
                                             |                |
                                             \_______   ______/
                                                     \ /
                                                      v
                                             (various low-level
                                                  services)
                                                      |
                                                      v
                                                final.target
                                                      |
                _____________________________________/ \_________________________________
               /                         |                        |                      \
               |                         |                        |                      |
               v                         v                        v                      v
    systemd-reboot.service   systemd-poweroff.service   systemd-halt.service   systemd-kexec.service
               |                         |                        |                      |
               v                         v                        v                      v
        reboot.target             poweroff.target            halt.target           kexec.target

Commonly used system shutdown targets are emphasized.










/etc/systemd/system
/usr/lib/systemd/system
/lib/systemd 
/usr/share/systemd



systemctl list-units --type=service --all
systemctl list-units --type=target --all
ls -l /usr/lib/systemd/system/runlevel?.target
systemctl list-dependencies graphical.target
systemctl get-default
systemctl set-default multi-user.target
ln -s '/usr/lib/systemd/system/multi-user.target' '/etc/systemd/system/default.target'

systemctl isolate multi-user.target
systemctl isolate poweroff.target
systemctl poweroff
systemctl reboot

systemd-analyze time



mkdir /var/log/journal
chgrp systemd-journal /var/log/journal
chmod 2775 /var/log/journal
systemctl restart systemd-journald.service

journalctl -b 0
journalctl -p warning		# displays all messages with a priority level of “warning”



systemctl list-dependencies rsyslog.service
systemctl status rsyslog.service
systemctl status rsyslog


ls /etc/systemd/system/graphical.target.wants


The systemd Unit Types

systemctl list-unit-files | grep postfix.service


systemd.unit=rescue.target
systemd.unit=emergency.target		# No filesystem is mounted, apart from the root
filesystem in read-only mode.


systemctl list-unit-files --type=service
systemctl is-enabled postfix.service


systemctl mask postfix.service
ln -s '/dev/null' '/etc/systemd/system/postfix.service'


systemctl start ntpd.service



echo "list all services which are started at bootup"
chkconfig --list |grep on
















dmesg --console-level level
dmesg --console-on
dmesg --show-delta
--human --color=always
dmesg --level=debug,emerg,alert,crit,err,warn,notice,info             # Restrict output to the given (comma-separated) list of levels.
dmesg --facility=kern,user,daemon,auth,syslog,lpr,news
dmesg --raw

dmesg --ctime            # Print human-readable timestamps.
dmesg --buffer-size      # Use  a  buffer of size to query the kernel ring buffer.  This is 16392 by default.
dmesg --decode









dmesg | grep -i irq		# show all interrupts found by the kernel during boot process
dmesg | grep -i dma		# shows dma capable devices during boot process


hdparm -d 1 /dev/sda	# enable DMA for the device /dev/sda?


grep '\] Memory' /var/log/dmesg


dmesg --userspace > /home/poozer/userspace.txt
dmesg --kernel > /home/poozer/kernel.txt

dmesg | grep

dmesg | tail -n 1



Facilities auth, auth-priv, cron, daemon, kern, lpr, mail, mark,
news, syslog, user, uucp, local0 – local7.

Priorities debug, info, notice, warning, err, crit, alert, emerg.


Action
Regular File:
File with full pathname beginning with “/”.
Terminal and Console:
Specify a tty, same with /dev/console.
Remote Machine:
@myhost.mydomain.org



ipcs ‐a                            # information on System V interprocess 
tail ‐n 500 /var/log/messages      # Last 500 kernel/syslog messages 
tail /var/log/warn                 # System warnings messages see syslog.conf 
tail /var/log/messages |grep ICMP |tail -n 1

tail /var/log/messages | grep UDP | tail -n 1



hwclock --utc --systohc
hwclock --show
dpkg-reconfigure tzdata



mailq -bp

runq
newaliases
telinit





0 - halt the system
1 - single user mode (minimal services)
2 - multi-user modes
3 - multi-user mode
4 - multi-user mode
5 - multi-user mode
6 - reboot the system



/etc/cron.allow
/etc/cron.deny	
/var/spool/cron/crontabs

              field          allowed values
              -----          --------------
              minute         0-59
              hour           0-23
              day of month   1-31
              month          1-12 (or names, see below)
              day of week    0-7 (0 or 7 is Sun, or use names)

              string         meaning
              ------         -------
              @reboot        Run once, at startup.
              @yearly        Run once a year, "0 0 1 1 *".
              @annually      (same as @yearly)
              @monthly       Run once a month, "0 0 1 * *".
              @weekly        Run once a week, "0 0 * * 0".
              @daily         Run once a day, "0 0 * * *".
              @midnight      (same as @daily)
              @hourly        Run once an hour, "0 * * * *".



crontab -e 				# Edit your user crontab file
crontab -e -u jdoe 		# Edit the crontab file of another user (command available only to the superuser)


at 5:00pm tomorrow myscript.sh 					####
at -f mylistofcommands.txt 5:00pm tomorrow		# Execute a command once at the specified time (absolute or relative)
echo "rm file" | at now+2 minutes 				####


at -l		######
atq 		## List the scheduled jobs


at -d 3		## Remove job number 3 from the list
atrm 3 		#####




Whenever an external command is executed, a child process is created. This action is
termed forking.
Built-in commands are different in that they do not need a child process to execute. They
were compiled into the shell


set command displays both
global and local environment variables and user-defi ned variables. It


create a global environment variable is to
fi rst create a local variable and then export it to the global environment.



PATH A colon-separated list of directories where the shell looks for commands
PS1 The primary shell command line interface prompt string


/etc/rc.d/rcX.d
S02schroot		# “start” parameter to scripts that start with S.
K02openvpn		# “stop” parameter to scripts that start with K

lsb_release -a
uname -a
cat /etc/debian_version




Cylinders 		# the concentric parallel tracks on all sides of all platters inside the hard disk drive.
Heads 			# the number of read/write heads inside the drive.
Sectors 		# the number of wedges the platters have been divided into.
Landing Zone	# an area of the platter near its inner diameter where no data are stored




The udev daemon creates a virtual file system that is mounted at /dev.





/dev   		# Special or device files, which refer to physical devices.
/opt		# commercial programs
/usr/local	# default location for source software



/var/spool			## Spooled (or queued) files for various programs.
/var/spool/at		## Spooled jobs for at(1).
/var/spool/cron		## Spooled jobs for cron(8).
/var/spool/lpd		## Spooled files for printing.
/var/spool/mail		## Replaced by /var/mail.
/var/spool/mqueue	## Queued outgoing mail.
/var/yp				## Database files for NIS.




ext2/3 cannont dynamically create create inodes








======================
       runlevel
======================
		5 | 3
  prevous | Current
======================




(hd1,5)
6th partition, second disk


/dev/hda	## IDE Hard Drive




lsscsi
sg_map						# provides map between sg name and device name of SCSI device
sginfo /dev/sda			# get physical SCSI adress from sda



0 – System timer – Reserved for internal use.
1 – Keyboard – Reserved for keyboard use only. 
2 – Cascade for IRQs 8–15
3 – Second RS–232 serial port (COM2: in Windows) – May also be shared by a fourth RS–232 serial port.
4 First RS–232 serial port (COM1: in Windows) – May also be shared by a third RS–232 serial port.

IRQ 1 is hard-wired for the keyboard

IRQ 8 is hard-wired for the real-time clock



## ================================================================== ## 
I/O addresses (also referred to as I/O ports) are unique locations in memory that are reserved for
communications between the CPU and specific physical hardware devices.
## ================================================================== ## 


## ================================================================== ## 
interrupt request (IRQ), or interrupt, is a signal sent to the CPU instructing it to suspend its current
activity and to handle some external event such as keyboard input.
## ================================================================== ## 




ls -R /lib/modules/$(uname -r)

Linux doesn’t begin using an IRQ until
the relevant driver is loaded. This may not happen
until you try to use the hardware.


## ================================================================== ## 
modinfo is run using modules compiled for a multiprocessing (SMP) kernel
## ================================================================== ## 
modinfo -d 
modinfo -p 
modinfo -a 




modinfo -p loop # verify kernel capability
modprobe loop max_part=16

/etc/modules.conf or /etc/ modprobe.conf :
alias ethO 3c59x

modprobe --show-config --verbose | grep xfs








depmod computes the interdependencies among
kernel modules and writes the results to /lib/
modules/$(uname -r)/modules.dep



--field
modinfo -a || modinfo --author
modinfo -d || modinfo --description
modinfo -l || modinfo --license
modinfo -p || modinfo --parameters
modinfo -n || modinfo --filename
modinfo -k

modinfo freevxfs
modinfo ohci-pci
modinfo -n freevxfs		# Print only 'filename'
modinfo -d freevxfs		# Print only 'description'
modinfo -a freevxfs		# Print only 'author'
modinfo -p freevxfs		# Print only 'parmameters'


modprobe -l					# List all modules available for use:
modprobe -lt net | grep 3c			# List all modules in the net directory for 3Com network interfaces:




/etc/modprobe.conf			# kernel modules configuration on 2.6+ kernels


The options directive in modprobe.conf gives modprobe a list of options, such as irq= or io=, 
that should be used when a particular kernel module loads.


## ================================================================== ## 
The Hardware Abstraction Layer (HAL) daemon (hald) 
Its job is to provide applications running on the system with
information about the hardware (both hotplug and coldplug) available in the system.
## ================================================================== ## 

## ================================================================== ## 
A zombied process is one where the process has finished executing and exited, but the process’ parent 
didn’t get notified that it was finished and hasn’t released the child process’ PID.
## ================================================================== ## 





losetup -v -f partition.img

mkdir -p /mnt/loop0
mount -t auto /dev/loop0 /mnt/loop0		## mount loop0 at /mnt/loop0

umount /dev/loop0			## Unmount loop0
losetup -d /dev/loop0		## Detach loop device



inetd uses tcp wrappers
/etc/hosts.allowed 
/etc/hosts.denied
xinetd has security features builtin



======================================
The main XDMCP servers in linux are: 
======================================
		XDM		KDM		GDM
======================================



The vmlinuz-version.gz file is the compressed Linux kernel file.
## ================================================================== ## 






depmod



tar –cvf /media/usb/backup.tar /home
## ================================================================== ## 
quotacheck command is used to scan the file system for disk usage as well as your create quota files.
## ================================================================== ## 



## ========================================================== ##
When a login shell is run, the bash shell program 
searches for configuration files in the following order: 
## ========================================================== ##
~/.bash_profile, ~/.bash_login, ~/.profile.
~/.bash_logout
## ========================================================== ##
non-login shell sessions:
/etc/bash.bashrc  and ~/.bashrc
## ========================================================== ##




mkisofs				# create iso-9660 filesystem
cdrecord			# burn to media


##########################################
Create isapnp configuration file:
##########################################
pnpdump > /etc/isapnp.conf
isapnp /etc/isapnp.conf
##########################################





What application can be used in place of xhost?
Answer: XAUTH


print a list of usernames (first column) and their corresponding user id (uid,
third column) from /etc/passwd?
cut -d: -f 1,3 /etc/passwd

cut −d ',' −f 1 /etc/passwd
cut −d ':' −f 1,7 /etc/passwd
















=============================================================================
xargs				# build command from standard input
od					# examine byte code of a binary file or inpupt stream
tr					# translates or deletes characters
set					# read and write variables to bash
sed					# directly modifies contents of files, send to standard output
/etc/inittab		# describes processes started at bootup and during normal operation
file globbing		# the process of wildcard expansion
umask				# sets default perminssions newly created files will recieve
debugfs				# interactely modify a filesystem
test 				# check file types and compare values
fg		# restores a job to the foreground
=============================================================================




cat -n /etc/profile | pr -d | lpr
cat -n /etc/profile | pr -dfl 50 | lpr


pr -3 -df /home/faggot/poop.txt


=============================================================================
wc --words
wc --lines
wc --bytes
wc --chars
wc --files0-from=
wc --max-line-length
=============================================================================

tac -							# concatenate and print files in reverse
tac filepart1 filepart2 filepart3 > wholefile.txt


=============================================================================

=============================================================================
split -2 <file> <splitfile>		# split file every 2 lines 


split -b 2000m large_file
cat x* >large_file
=============================================================================





=============================================================================
pr ­-l $lines			# pr option used to set page length in lines per page 
pr ­­--length=$lines		# 
pr ­­--header=$text		# pr option used to set header text pr ­h text
pr ­­--omit­-header		# pr option used to omit header pr ­t
=============================================================================
fmt --­­width=$width		# 
fmt ­-w $width			# 
fmt ­-width				# 
fmt -w 75 myfile 		# Format a text file so that each line has a max width of 75 chars

########################################################################################
fmt −u file.txt		## output text with "uniform spacing", where the space 			  ##
					## between words is reduced to one space character and 			  ##
					## the space between sentences is reduced to two space characters ##
########################################################################################

=============================================================================
nl --­­body­-numbering=$style		# nl option used to set body numbering style nl ­b style
nl ­­--header-­numbering=$style		# nl option used to set header number style nl ­h style
nl ­­--section-­delimeter=$code		# nl option used to specify page seperator for a file nl ­d code
=============================================================================
nl --­­no-­renumber	# nl option used to keep nl from resetting  
nl ­-p				# line numbers on new pages
=============================================================================
nl ­­--number-­format=$format		# nl option used to specify number format 
nl -n $format					# specify number format 
=============================================================================
		# 
		# 
		# 
		# 
		# 
		# 
||  ||	## 
||  ||	## 
||  ||	##
||  ||	## 





||n||
||  ||

|| a ||	## number all lines within the body, header,or footer
|| t ||	## number only non­blank lines t
|| n ||	## omit line numbers 


nl -n rz
nl -v1 
nl -i1 
nl -l1 
nl -sTAB 
nl -w6 
nl -nrn 
nl -hn 
nl -bt 
nl -fn
||  ||	## 
||  ||	## 
||  ||	## 
||  ||	##
||  ||	## 
||  ||	## 
||  ||	## 
||  ||	##
||  ||	## 

procinfo -H -r -n3			# -n3 | # of seconds between updates
procinfo -H -r -D -b		# -D  | memory/swap usage, -b number of bytes
procinfo -H -r -s			# -s  | netdevs


echo "Running processes CPU consumption"
pidstat
pidstat -r			# report page faults
pidstat	-s			# stack utilization
pidstat -d			# the number of bytes written and read per second by a process.
pidstat -p <PID>	# gather resource consumption details for a specific target process



echo "displays the location of each memory region that is being copied"
pcat -v <PID> > /home/poo/xntps.pcat


echo "Libraries loaded of a running process with pmap"
pmap -d 7840






System Monitoring Piped Through Grep:


grep "System RAM" /proc/iomem
grep MemTotal /proc/meminfo
smartctl -A /dev/sda | grep Power_On_Hours
grep -F capacity: /proc/acpi/battery/BAT0/info
cat /proc/meminfo | grep "^MemTotal" | tr -s ' ' | awk '{ print $2" "$3 }'




/proc/[pid]/io (since kernel 2.6.20)
              This file contains I/O statistics for the process
/proc/[pid]/limits

/proc/self/map_files/		## Entries  are  named  by  memory  region  start and end address pair
		## (expressed as hexadecimal numbers), and are symbolic links to the mapped  files themselves.

/proc/[pid]/maps
              A file containing the currently mapped memory regions and their access  permis‐
              sions.
/proc/[pid]/mem
              This file can be used to  access  the  pages  of  a  process's  memory
/proc/[pid]/mountinfo		## contains information about mount points.  It supplies various infor‐
              mation (e.g., propagation state, root of mount for bind mounts

/proc/interrupts			# IRQ assignments
/proc/cmdline				# 
/proc/bus/pci/devices
/proc/bus/usb/devices
/proc/ide/sda/geometry		# SCSI geometry of sda
egrep 'vmx|svm' /proc/cpuinfo 


/sys/class/net List of all network interfaces in the system
/sys/class/
/sys/class/
/sys/class/
/sys/class/
/sys/class/
/sys/class/



hdparm -l				# Hard disk parameters
hdparm -g /dev/hda 		# Display drive geometry (cylinders, heads, sectors) of /dev/hda
hdparm -i /dev/hda 		# Display identification information for /dev/hda
hdparm -tT /dev/hda 	# Perform benchmarks on the /dev/hda drive



hdparm	# adjust the DMA settings of an IDE hard drive?
tune2fs	# reserved blocks count for a file-system be seen



smokeping			# monitor network latency using RRDTool to store and dislay graphs


scsi_info /dev/sda		# details of real devices that corresponse to /dev/sda




watch --color -n1 'cat /proc/interrupts'	# ## Watch changeable data continuously ##


watch --color -d ls -l					# To watch the contents of a directory change, you could use
watch --color -d 'ls -l | fgrep joe'	# files owned by user joe
watch echo $$
watch uname -r
watch --color -n 1 lsof -nPi tcp:443
watch --color -n 1 lsof -nPi tcp:80
watch --color -n 1 
watch --color -n 1 lsof -i udp:5353 -t
watch --color -n 1 lsof -iTCP -sTCP:LISTEN
watch --color -n 1 lsof -t -c sshd
watch --color -n 1 lsof -i tcp:ssh
watch --color -n 1 lsof -i tcp:22
watch --color -n 1 lsof -u syslog
watch --color -n 1 lsof +d /var/log
watch --color -n 1 lsof -i udp -u root
watch -n1 iptables -vnL
watch -d -n 2 iptables -nvL
Monitor iptables in realtime


grep MemTotal /proc/meminfo




cdrecord -v -eject dev=0,1,0 data.iso




set
man 7 regex
nohup

Present Working Directory
pwd -L
pwd -P



file --files-from
file --mime
file --mime-type
file --list
file <file>.c file /dev/{sr0,loop0,}

file /dev/{sr0,loop0,loop1,loop2,loop3,loop4,loop5,loop6,loop7}
file /dev/{vcs,vcsa,vhci,vhost-net,sg0,watchdog,ppp,mcelog,hidraw0}






/usr/lib/rpm/rpmrc

/etc/rpmrc			# changes here affect RPM configuration on a global scope

~/.rpmrc			# change here are on per user bases


RPM --showrc		# displays rpm configuration file (rpmrc)
rpm -nodeps			# install without worrying about dependancies

rpm -qlc			# List configurations files by an rpm package

rpm -Kv *.rpm		# check package signature while displaying progess indicator
rpm -iv *.rpm		# install package while displaying progess indicator
rpm -Vv *.rpm


rpm --checksig bash
rpm --verify --group “Amusements/Games”
rpm --verify --all

­rpm -b				# builds a binary package given a src code and config file
rpm -p				# queries the uninstalled RPM package file
rpm -a				# Queries or verifies all packages
rpm -f				# Queries or verifies the package that owns the file
rpm -l              # list packages in redhat
rpm -K				# check package signature
rpm -F				# ­F or ­­freshen update already installed packages
rpm –v 				# Display a progress indicator while the package is installed.




­­rpm --rebuild 		# builds a binary package given a RPM source
­­rpm --rebuilddb		# rebuilds the RPM DB to fix errors
rpm ­­--root <Dir>	# modifies the linux system having a root folder located at dir
rpm --­­force			# forces installation of a package even when it means overwriting existing files or packages
rpm --test			# Checks for dependencies, conflicts and other problems without actually installing the package

rpm --prefix <path> # Sets the installation dir to path
rpm -qi				# displays package info
rpm -ql				# Displays the files contained in the package
rpm -qR				# displays the packages and files on which this one depends

rpm ‐ql package‐name               # list the files for INSTALLED package 
rpm ‐qlp package.rpm               # list the files inside package 


rpm -qa --qf “%{GROUP}\n” | sort -u
rpm2cpio pam-1.1.8-2.fc20.x86_64.rpm | cpio -i -v --make-directories




rpm -qpi openssh-3.4p1-2.i386.rpm | grep Version

rpm -qi kernel-source | grep Version


rpm -qa					## List the packages that have been installed on the system:
rpm -qd at				## List the documentation files in a package:
rpm -qc at				## List configuration files or scripts in a package:
rpm -qf /etc/fstab		## Determine what package a particular file was installed from.

rpm -ql kernel-source			## For an installed package, enter query mode and use the -l option along with the package name:
rpm -qf /etc/aliases			## Those that are package members look like this:
rpm -qa | grep kernel			## List Installed Packages With Kernel in the name

rpm -qlp kernel-source-1.3.0-1.i386.rpm		## List the files contained in a package:



rpm --showrc
-d, --docfiles
              List only documentation files (implies -l).

rpm -q --requires
rpm -q --provides
rpm -q --changelog httpd | less
rpm --querytags | less

/etc/yum.conf
/etc/yum.repos.d/
cat /etc/yum.repos.d/*.repo
/var/cache/yum
yum 
yum check­update		# checks to see whether updates are available
yum upgrade			# works like update with the ­­obsoletes flag set
yum list			# displays info about the package
yum list available
yum list installed
yum list all


yum provides		# displays information about packages 
yum whatprovides	# that provide a specified program or feature
yum search			# searches package names, summaries, packagers and descriptions for a specified keyword

yum info ­ 			# displays info about a package
yum clean ­ 			# cleans up the Yum cache directory
yum clean metadata
yum clean packages
yum shell ­ 			# enters the yum shell mode


yum resolvedep­ 			# displays packages matching the specified dependency
yum localinstall­ 		# install the specified local RPM files, using your yum repositories to resolve dependencies
yum deplist­ 			# display dependencies of the specified package
yum deplist emacs | less

yum localupdate­ 		# updates the system using the specified local RPM files, using your yum repositories to resolve dependencies
yumdownloader firefox

yum history
yum history info 96

yum grouplist | less
yum groupinstall LXDE



cpio -i		# Extract
cpio -o < name-list		# Copy files named in name-list to the archive
cpio -o             	# --create Create the archive (run in copy-out mode)
cpio -t					# --List Print a table of contents of the input
cpio -A					# Append to existing archive
cpio -d					# --make-directories     Create leading directories where needed



aptitude versions '~nexim4-daemon-light'
aptitude versions --group-by=none '~nexim4-daemon-light'
aptitude versions wesnoth

aptitude versions '~i'                  # will display all the versions that are currently installed on the system
aptitude safe-upgrade

aptitude install zsh
aptitude remove zsh
aptitude full­upgrade
aptitude safe­upgrade
aptitude search samba 

aptitude -s			# Simulate actions, but do not actually perform them.
aptitude -d			# Only download packages, do not install or remove anything.
aptitude -P			# Always prompt for confirmation of actions.
aptitude -y			# Assume that the answer to simple yes/no questions is 'yes'.
aptitude -f			# Aggressively try to fix broken packages.
aptitude -V			# Show which versions of packages are to be installed.
aptitude -D			# Show the dependencies of automatically changed packages.
aptitude -Z			# Show the change in installed size of each package.
aptitude -v			# Display extra information. (may be supplied multiple times).
aptitude -t [release]   # Set the release from which packages should be installed.









alien --to-deb		# converts Debian, 
alien --to-rpm		# converts RPM, 
alien --to-slp		# converts Stampede, 
alien --to-tgz		# converts tarball format






groupadd admin                     # Add group "admin" and user colin (Linux/Solaris) 
# useradd ‐c "Colin Barschel" ‐g admin ‐m colin 
# usermod ‐a ‐G <group> <user>       # Add existing user to group (Debian) 






the most common states are p, meaning that no trace of the package exists on the
system, c, meaning that the package was deleted but its configuration files remain on the system, i,
meaning that the package is installed, and v, meaning that the package is virtual. The second character
indicates the stored action (if any; otherwise a blank space is displayed) to be performed on the package,
with the most common actions being i, meaning that the package will be installed, d, meaning that the
package will be deleted, and p, meaning that the package and its configuration files will be removed. If
the third character is A, the package was automatically installed.




pgrep -u root sshd
pgrep -u root,daemon

kill $(pgrep mozilla)

pgrep −l		# To list processes id's and names type:

pgrep -d, -x xterm | ps aux
ps aux | pgrep redis-server



grep -n faggot file.txt		# Line #s
grep -i faggot file.txt		# Case Insensitive




The file type is one of the following characters:

 /\		/\												  /\\
/^^\   /^^\												 /^^\\
####___####												/_##_\\
 ||		|| _______________________________________________| |
 ||		|| _______________________________________________| |
 || ‘-’ || regular file					  				  | |
 || ‘b’ || block special file					  		  | |
 || ‘c’ || character special file						  | |
 || ‘C’ || high performance (“contiguous data”) file	  | |
 || ‘d’ || directory					  				  | |
 || ‘D’ || door (Solaris 2.5 and up)					  | |
 || ‘l’ || symbolic link					  			  | |
 || ‘M’ || off-line (“migrated”) file (Cray DMF)		  | |
 || ‘n’ || network special file (HP-UX)					  | |
 || ‘p’ || FIFO (named pipe)					  		  | |
 || ‘P’ || port (Solaris 10 and up)					  	  | |
 || ‘s’ || socket										  | |
 || ‘?’ || some other file type							  | |
 ||_____||================================================|_|
####===#### 											 ##### 

◊ 

ls −F 			# append symbols to particular files, such as * (asterisk) for executable files.
ls −S			# sort the output of the command in decending order sorted by size.
ls -F			# Filetype
ls −d */			# Lists all subdirectories of current directory.
ls −d /usr/*/*/doc		# Lists all directories that are two levels below the /usr/ directory and have a directory called "doc"
ls *.???
ls ?????
ls ?????.???

echo "lists the directories as well"
ls [ab]*
ls [a-m]*
ls [!a-m]*


/ Directory
@ Symbolic link
= Socket
| Pipe



cp -i		# interactive
cp -p		# preserve ownership
cp -a		# Archive
cp -u		# update



mv -i		# interactive






find .
find . -name "fo*"
find . -name "[a-z]*.*"
find . -size +5M
find . -size -5M
find . -type l
find . -type d


find . -atime +5		# Acess Time
find . -ctime +5		# Changed Time
find . -mtime +5		# Modification Time

find . -name "*.zip" | cpio -o > ../file.cpio
cpio -id < ../file.cpio


df -h







## ============================================================= ##
dd if=/dev/sda of=backup.img 		# Create Backup:
dd if=backup.img of=/dev/sda 		# Restore Backup:
## ================================================================================== ##
dd if=/dev/sda7 of=/home/root.img bs=4096 conv=notrunc,noerror 		# Backup / 
dd if=/home/root.img of=/dev/sda7 bs=4096 conv=notrunc,noerror 		# Restore / 
dd bs=1M if=/dev/ad4s3e | gzip ‐c > ad4s3e.gz                  		# Zip the backup 
dd bs=1M if=/dev/ad4s3e | gzip | ssh eedcoba@fry 'dd of=ad4s3e.gz' 	# also remote 
## ============================================================================= #######
gunzip ‐dc ad4s3e.gz | dd of=/dev/ad0s3e bs=1M						# Restore the zip ##
gunzip ‐dc ad4s3e.gz | ssh eedcoba@host 'dd of=/dev/ad0s3e bs=1M'	####################
## ============================================================================= #######
dd if=/dev/ad0 of=/dev/ad2 skip=1 seek=1 bs=4k conv=noerror   						# Skip MBR This is necessary if the destination (ad2) is smaller. 
dd if=/vm/FreeBSD‐8.2‐RELEASE‐amd64‐memstick.img of=/dev/disk1 bs=10240 conv=sync 	# Copy FreeBSD image to USB memory stick 
## ============================================================= ##
dd if=/dev/hda of=/dev/null bs=1m		# Check for bad blocks 
mount ‐o loop /hda1.img /mnt			# Mount the image 
## ============================================================= ##
dd if=/dev/zero of=/dev/hdc			# Delete full disk 
dd if=/dev/urandom of=/dev/hdc		# Delete full disk better 
kill ‐USR1 PID 						# View dd progress (Linux) 
## ==================================================================================== ##
dd if=/dev/sda of=/mbr_sda.bak bs=512 count=1       # Backup the full MBR 
dd if=/dev/zero of=/dev/sda bs=512 count=1          # Delete MBR and partition table 
dd if=/mbr_sda.bak of=/dev/sda bs=512 count=1       # Restore the full MBR 
dd if=/mbr_sda.bak of=/dev/sda bs=446 count=1       # Restore only the boot loader
## ==================================================================================== ##
dd if=/mbr_sda.bak of=/dev/sda bs=1 count=64 skip=446 seek=446 # Restore partition table
dd bs=1k if=/dev/hda1 conv=sync,noerror,notrunc of=hda1.img    # Store into an image 
## ============================================================================================================================= ##
dd bs=1k if=/dev/hda1 conv=sync,noerror,notrunc | gzip | ssh root@fry 'dd of=hda1.gz bs=1k'		# Send to remote ssh connection 
## ============================================================================================================================= ##


## ================================================== ##
gzip backup.img		# Compess Backup with gzip
bzip2 backup.img	# Compess Backup with bzip2
## ================================================== ##

## ==================================================================================== ##
dd if=/dev/hda of=~/mbr.txt count=1 bs=512      ## Make a backup of the MBR from the hard drive and store a copy
dd if=~/mbr.txt of=/dev/hda count=1 bs=512      ## Restore the MBR
sfdisk -d /dev/hda > partition_backup.txt		## Backup of the partition layout
sfdisk /dev/hda < partition_backup.txt			## Restore the partition table, you can use the sfdisk
## ==================================================================================== ##



## ==================================================================================== ##
tar cvzf archive.tar.gz files		# Compress with gunzip
tar cvjf archive.tar.bz files		# Compress with Bzip2
tar zxvf archive.tar.gz				# Extract
tar cvJf archive.tar.xz archive/ 	# Create a tarred xz-compressed archive
tar xvJf archive.tar.xz 			# Extract a tarred xz-compressed archive
tar tvf archive.tar 				# List the contents of the tarred archive without extracting it


tar --list (t)						# list archive contents
tar tzf home.tgz            		# look inside the archive without extracting (list)
## ==================================================================================== ##
tar ‐xjf home.tbz home/colin/file.txt    # Restore a single file 
## ==================================================================================== ##
tar c dir/ | gzip | ssh user@remote 'dd of=dir.tgz' # arch dir/ and store remotely. 
tar cvf ‐ `find . ‐print` > backup.tar              # arch the current directory. 
tar ‐cf ‐ ‐C /etc . | tar xpf ‐ ‐C /backup/etc      # Copy directories
## ==================================================================================== ##
tar ‐cf ‐ ‐C /etc . | ssh user@remote tar xpf ‐ ‐C /backup/etc      # Remote copy. 
tar ‐czf home.tgz ‐‐exclude '*.o' ‐‐exclude 'tmp/' home/ 
## ==================================================================================== ##



mount −t ext2 /dev/fd0 /mnt/floppy
mount −t iso9660 /dev/hdb /mnt/cdrom
mount −t iso /tmp/image_file /mnt/iso_file/ −o loop

mount -t sysfs sysfs /sys

umask rw-r-----		# 027






ls | tee output.txt
tee		# option used to append data to files tee ­a


cat output.txt





fg 1		# bring a process TO the terminal


bg 1		# Take a process, and put it in the background



The files section consist of fontPath, RGBPath and ModulePath



Files			# File pathnames
ServerFlags		# Server flags
Module			# Dynamic module loading
Extensions		# Extension enabling
InputDevice		# Input device description
InputClass		# Input class description
OutputClass		# Output class description
Device			# Graphics device description
VideoAdaptor	# Xv video adaptor description
Monitor			# Monitor description
Modes			# Video modes descriptions
Screen			# Screen configuration
ServerLayout	# Overall layout
DRI				# DRI-specific configuration
Vendor			# Vendor-specific configuration

The  following  obsolete  section names are still recognised compatibility purposes.  In new config files,
the InputDevice section should be used instead.

Keyboard		# Keyboard configuration
Pointer			# Pointer/mouse configuration








ps –f 	# commands only display information about the processes associated with your current terminal session.


ps aux
a - Select all processes except both session leaders
u - user-oriented format
x - processes without controlling ttys


ps -eo user,pid,pcpu,nice,comm | grep gdm
e - Everything
o - options







pstree
pstree --show-pids --show-parents --show-pgids --arguments --long --ascii >> pstree.txt && cat pstree.txt
pstree --show-pids --show-parents --show-pgids --arguments --long >> pstree.txt && cat pstree.txt
pstree --show-pids --arguments --long >> pstree.txt && cat pstree.txt
pstree --arguments --show-pids --show-pgids --show-parents > pstree.txt











HAL (Hardware Abstraction Layer)
dbus - Communication pathway to hardware/software


Sysfs - Where HAL keeps DB of devices connected


POST (Power-On Self Test)
BIOS (Basic I/O System)

Chain loader

GRUB (GRand Unified Bootloader)

GRUB stage 1 is loaded from the MBR and executes GRUB stage 2 from filesystem.

The chain loader hands over to the boot sector of the partition on which resides the OS.

The chain loader also mounts initrd, an initial ramdisk
to be used as the initial root device during kernel boot

Afterwards, the system runs /linuxrc with PID 1.

the system instead loads into memory initramfs, a cpio compressed image,
and unpacks it into an instance of tmpfs inside RAM. 

The kernel then executes /init from within the image.








sfdisk -T			# List of partition types and their names

0x82	Linux swap
0x83	Linux
0x85	Linux extended
0x8e	Linux LVM





/etc/lvm/lvm.conf

>> Logical Volume Management (LVM)
>> partition type 0x8E (Linux LVM)

>> LVM uses the Linux device mapper feature (/dev/mapper)
>> A Volume Group is divided into small fixed-size chunks called Physical Extents
>> Physical Extents are mapped one-to-one to Logical Extents.
>> Logical Extents are grouped into Logical Volumes, on which filesystems are created.



■ Physical volume (PV)  A PV is a partition or a disk drive initialized to be used by LVM.
■ Physical extent (PE)  A PE is a small uniform segment of disk space. PVs are split into PEs.
■ Volume group (VG)  A VG is a storage pool, made of one or more PVs.
■ Logical extent (LE)  Every PE is associated with an LE, and these PEs can be combined into a logical volume.
■ Logical volume (LV)  An LV is a part of a VG and is made of LEs. An LV can be formatted with a filesystem and then mounted on the directory of your choice.




pvdisplay --columns
pvdisplay --maps



pvcreate /dev/sdc4 /dev/sde







lspcmcia
lshal
lshw



kill




Signal     Value     Action   Comment
──────────────────────────────────────────────────────────────────────
SIGHUP        1       Term    Hangup detected on controlling terminal or death of controlling process
SIGINT        2       Term    Interrupt from keyboard
SIGQUIT       3       Core    Quit from keyboard
SIGILL        4       Core    Illegal Instruction
SIGABRT       6       Core    Abort signal from abort(3)
SIGFPE        8       Core    Floating point exception
SIGKILL       9       Term    Kill signal
SIGSEGV      11       Core    Invalid memory reference
SIGPIPE      13       Term    Broken pipe: write to pipe with no readers
SIGALRM      14       Term    Timer signal from alarm(2)
SIGTERM      15       Term    Termination signal
SIGUSR1   30,10,16    Term    User-defined signal 1
SIGUSR2   31,12,17    Term    User-defined signal 2
SIGCHLD   20,17,18    Ign     Child stopped or terminated
SIGCONT   19,18,25    Cont    Continue if stopped
SIGSTOP   17,19,23    Stop    Stop process
SIGTSTP   18,20,24    Stop    Stop typed at terminal
SIGTTIN   21,21,26    Stop    Terminal input for background process
SIGTTOU   22,22,27    Stop    Terminal output for background process




 1) SIGHUP		# HUP  (hang up)
 2) SIGINT		# INT  (interrupt)
 3) SIGQUIT		# QUIT (quit)
 9) SIGKILL		# KILL (non­catchable, non­ignorable kill)
15) SIGTERM		# TERM (software termination signal)




1 or SIGHUP				# terminates interactive prog. and causes many daemons to reread their config
9 or SIGKILL			# causes the process to exit without performing routine shutdown tasks
15 or SIGTERM (default)	# causes process to exit but allows it ot close open files


skill −STOP <Usr>		# stop all of that users processes, this will cause his screen to freeze
skill −CONT <Usr>		# tell that all processes may continue as before.



================================================
				niceness
================================================
     -20                 -         19
Higher Priority               Lower Priority
================================================


		renice
===============================
	idle			Realtime
	 20					0
===============================






nice -n -5 $CMD		## Start a command with a niceness of -5. 
					## If niceness is omitted, a default value of 10 is used
renice -5 			## Change the niceness of a running command to -5

kill -l 	## List all available signal names
kill -l 1 	## Print the name of signal number 1
kill ‐INFO 


/ect/apt/apt.conf

apt-get  				# 
apt-get ­-d | ­­--download-­only	# Downloads package files but doesn’t install
apt-get ­-f | ­­--fix­broken		# Attempts to fix a system on which dependencies are unsatisfied
apt-get ­-m | ­­--ignore­-missing	# Ignores all package files that can't be retrieved
­apt-get ­-q | --quiet			# Omits some progress indicator information.
­apt-get ­-s |­­ --simulate			# Performs a simulation of the action without actually modifying, installing, or removing files.
­apt-get ­-y | ­­--assume­-yes 		# Produces a “yes” response to any yes/no prompt installation scripts.
apt-get -b 						# Compiles a source package after retrieving it.



--differences

apt-cache gencaches					# creates APTs package cache.
apt-cache showpkg					# showpkg displays information about the packages listed on the command line. R
apt-cache stats						# displays some statistics about the cache. 
apt-cache showsrc					# displays all the source package records that match the given package names. 
apt-cache dump						# shows a short listing of every package in the cache. It is primarily for debugging.
apt-cache unmet						# displays a summary of all unmet dependencies in the package cache.
apt-cache dumpavail >"$avail"
apt-cache showpkg
apt-cache search
apt-cache depends					# shows a listing of each dependency a package has and all the possible other packages that can fulfill that dependency.
apt-cache showpkg librpmsign3


apt-cache rdepends					# shows a listing of each reverse dependency a package has.
apt-cache --all-names				# pkgnames print all names, including virtual packages and missing dependencies.
apt-cache --recurse					# Make depends and rdepends recursive so that all packages mentioned are printed once.
apt-cache --installed
apt-cache --generate




The Ext2 file system does not use journaling



/etc/dpkg/dpkg.cfg.d/[0-9a-zA-Z_-]*		##  fragment files (since dpkg 1.15.4).

/etc/dpkg/dpkg.cfg			##  file with default options.
/var/log/dpkg.log			##  Default log file (see /etc/dpkg/dpkg.cfg(5) and option --log).
/var/lib/dpkg/available		##  List of available packages.
/var/lib/dpkg/status		##  Statuses  of  available  packages.


dpkg -l	| --list <pattern>	# Lists all installed packages whose names match pattern
dpkg -I	| --info			#  display information about an uninstalled package file
dpkg -p	| --print­avail		# or ­­ display information about an installed package.
dpkg --list
­dpkg -L | --­­listfiles		# Lists the installed files associated with a package
dpkg --contents			# display contents of .deb
dpkg --configure		# configure .deb
dpkg -S					# Search
­dpkg -S <pattern> | --­­search <pattern>		# Locates the package(s) that own the file(s) specified by pattern
dpkg -X						# extract
­dpkg -C | ­--­audit			# Searches for partially installed packages and suggests what to do with them
dpkg --­­root=<dir>			# modifies the linux system using a root directory located at dir 
­dpkg -B | --­­auto­deconfigure ­ 	# used with ­r ­ disables packages that rely on one that is being removed
­dpkg -G ­ 						# used with ­i ­ Doesn’t install the package if a newer version of the same package is already installed.
dpkg -­E | --­­skip­same­version		# used with ­i ­ Doesn’t install the package if the same version of the package is already installed.




dpkg -L apt | grep '^/usr/bin'

dpkg --get-selections		## Get list of package selections, and write it to stdout.
dpkg-query --load-avail

less /var/lib/dpkg/available			## search the listing of packages yourself:
dpkg --print-avail elvis vim | less		## see the entries in /var/lib/dpkg/available of two packages:

config.cache			# stores config from ./configure command in source code

aptitude show


apt-get -s install			# apt-get --simulate
apt-get dselect-upgrade

dpkg-reconfigure


dselect				# ncurses debian based package manager





/etc/inittab
# /etc/inittab − init daemon configuration file
#
# Default runlevel
id:1:initdefault:
#
# System initialization
si:S:sysinit:/etc/init.d/rc S
#
# Runlevel scripts
r0:0:wait:/etc/init.d/rc 0
r1:1:respawn:/bin/sh
r2:2:wait:/etc/init.d/rc 2
r3:3:wait:/etc/init.d/rc 3
r4:4:wait:/etc/init.d/rc 4
r5:5:wait:/etc/init.d/rc 5
r6:6:wait:/etc/init.d/rc 6







xz --robot --info-memory
xz --robot --list





--compress


grub-mkimage

grub-mkdevicemap

grub-mkconfig


==========================================
grub-mkconfig -o /home/faggot/grub.cfg
==========================================
Generating grub configuration file ...
Found background image: wallpaper.png
Found linux image: /boot/vmlinuz-4.3.3-parrot-amd64
Found initrd image: /boot/initrd.img-4.3.3-parrot-amd64
done
==========================================================



man grub-fstest | cut -c8-100 | tee grub-fstest.txt


man grub-installed | cut -c8-100 | tee grub-fstest.txt


>> To prevent system from booting hold down SHIFT
>> Kernel must reside below the 1024th cylinder



lilo -R				# sets lilo auto boot on next boot only








man pages are "flat" documents, meaning single files.
info uses hypertext (like web pages) to help organize docs


1 Executable programs or shell commands
2 System calls (functions provided by the kernel)
3 Library calls (functions within program libraries)
4 Special files
5 File formats and conventions
6 Games
7 Miscellaneous
8 System administration commands (usually only for root)
9 Kernel routines


==================================
|| Dir 	||   Section Name
__________________________________
|| man1 ||  (1) User Commands
|| man2 ||  (2) System Calls
|| man3 ||  (3) Subroutines
|| man4 ||  (4) Devices
|| man5 ||  (5) File Formats
|| man6 ||  (6) Games
|| man7 ||  (7) Miscellaneous
|| man8 ||  (8) Sys. Admin
|| manl ||  (l) Local
==================================

apropos


man −f <cmd>	## This will list details associated with the command
man -w			## show location of man pages
man -a			## show all man pages for command
man -wa
man -d mkfifo	## use the debug (-d) option to man to watch as it constructs a manpath



/etc/manpath.config						## man-db configuration file.
/var/cache/man/index.(bt|db|dir|pag)	## An FHS compliant global index database cache.
/usr/man/index.(bt|db|dir|pag)			## A traditional global index database cache.



info --index-search=		## 
info --output=$FILE		## 
info --subnodes			## 

info -w				## print physical	##
info --where		## location of		##
info --location		## Info file.		##



info emacs buffers				## start at buffers node within emacs manual
info --show-options emacs		## start at node with emacs' command line options

info --subnodes -o out.txt emacs	## dump entire manual to out.txt



/usr/local/info
              Info pages associated with locally installed programs.
/usr/share/man.
       /usr/local/man
              Man pages associated with locally installed programs.
/usr/share/info
              Info pages go here.

       /usr/share/locale
              Locale information goes here.

       /usr/share/man
              Manual pages go here in subdirectories according to the man page sections.

       /usr/share/man/<locale>/man[1-9]
              These directories contain manual pages for the specific locale in source code form.

/var/log
              Miscellaneous log files.

       /var/opt
              Variable data for /opt.

       /var/mail
              Users' mailboxes.  Replaces /var/spool/mail.







========================================
				#####################
xf86config		## Configure the 
XF86Setup		## X11 Server
				#####################
========================================


startx > xinit > xinitrc > Xclients
/etc/X11/xdm/Xsetup
/etc/X11/gdm/Init/Default



/etc/x11/xdm/Xaccess Control inbound requests from
remote hosts

/etc/x11/xdm/Xresources Configuration settings for X
applications and the login screen


/etc/x11/xdm/Xservers		Association of X displays with local X server software, or with X terminals via XDMCP
/etc/x11/xdm/Xsession		Script launched by xdm after login
/etc/x11/xdm/Xsetup_0 		Script launched before the graphical login screen
/etc/x11/xdm/xdm-config		Association of all xdm configuration files



xhost [+]name.faggot.edu	 added to the list allowed to connect to the X server.






Display Manager greeting screen
Defined in /etc/x11/xdm/Xresources
xlogin*greeting: \
Debian GNU/Linux (CLIENTHOST)


GNOME
Display
Manager
/etc/gdm/gdm.conf or /etc/gdm/custom.conf

gdmsetup


KDE Display Manager
/etc/kde/kdm/kdmrc





xwininfo	# show you the running color depth while in X?
xvidtune -show			# tune X11 server settngs


X -audit 1		# The default level is 1, meaning only connection rejections  are  reported.
X -audit 2		# Level 2 additionally reports all successful connections and disconnects.
X -audit 4		# Level 4 enables messages from the SECURITY extension
X -audit 0		# Level 0 turns off the audit trail. 

-nolisten  tcp



setenv DISPLAY myws:0
DISPLAY=myws:0; export DISPLAY

The eight primary colors can be represented as:

           black                rgb:0/0/0
           red                  rgb:ffff/0/0
           green                rgb:0/ffff/0
           blue                 rgb:0/0/ffff
           yellow               rgb:ffff/ffff/0
           magenta              rgb:ffff/0/ffff
           cyan                 rgb:0/ffff/ffff
           white                rgb:ffff/ffff/ffff




xfwp.
/usr/adm/Xnmsgs
/etc/Xn.hosts
/tmp/.X11-unix/Xn


xauth Xau xdm xhost xfwp
xset xsetroot xhost xinput xrr
Xorg Xdmx Xephyr Xnest Xvfb Xquartz XWin
editres
iceauth xfs fsinfo fslsfonts fstobdf
xset xsetroot xstdcmap  xmodmap
xwininfo  xlsclients xdpyinfo xlsatoms  xprop
xwd xwud  xmag x11perf bdftopcf 
xfs fsinfo fslsfonts fstobdf
Xserver rgb mkfontdir
xclipboard
xkbcomp setxkbmap xkbprint xkbbell xkbevd xkbvleds  xkbwatch xkill
Xau

xrdb $HOME/.Xresources
xmodmap -e "keysym BackSpace = Delete"
mkfontdir /usr/local/lib/X11/otherfonts
xset fp+ /usr/local/lib/X11/otherfonts
xmodmap $HOME/.keymap.km
xsetroot -solid 'rgbi:.8/.8/.8'
xset b 100 400 c 50 s 1800 r on
xset q
twm
xmag
xclock -geometry 48x48-0+0 -bg blue -fg white
xeyes -geometry 48x48-48+0
xbiff -update 20
xlsfonts '*helvetica*'
xwininfo -root
xdpyinfo -display joesworkstation:0
xhost -joesworkstation
xrefresh
xwd |xwud
bitmap companylogo.bm 32x32
xcalc -bg blue -fg magenta
xterm -geometry 80x66-0-0 -name myxterm $*





Xorg
xdmx
xephyr
xnest
xkbwatch
xkill
xlogo
xlsatoms
xlsclients
xlsfonts
xmag
xmh
xmodmap
xprop
xrdb
xrefresh
xrx
xset
xsetroot
xsm
xstdcmap
xterm
xwd
xwininfo
xwud
xserver
xorg
xdmx
xephyr
xnest
xquartz
xvfb
xvnc
xWin





echo "Hello" | write jdoe		# Write a message to the terminal of user jdoe (must be logged in)
write jdoe						# Write interactively a message to the terminal of user jdoe (must be logged in)
echo "Hello" | wall 			# Write a message to the terminal of all logged in users













systemd.mount
btrfs
cryptsetup@.service
systemd-efi-boot-generator
systemd-fstab-generator


http://www.freedesktop.org/wiki/Specifications/DiscoverablePartitionsSpec/




audit2allow
audit2why
libaudit.conf
systemd-update-utmp.service
yasat
pam_selinux

se_apt-get (8)     
se_aptitude (8)    
se_dpkg (8)        
se_dpkg-reconfigure
se_dselect (8)     
se_synaptic (8)    
setcifsacl (1)       - Userspace helper to alter an ACL in a security descriptor for Common Internet File System (CIFS)
setfiles (8)         - set SELinux file security contexts.
skipfish (1)         - web application security scanner
snmpkey (1p)         - Create SNMPv3 security keys for the Net::SNMP module
sudoers (5)          - default sudo security policy plugin
getcifsacl
fixfiles
chcat
chcon
pam-auth-update
pam_env.conf





dh_installpam
runcon
hardening-check
matchpathcon
openvas-nvt-sync
greenbone-nvt-sync
gsad

ICEAUTHORITY
XAUTHORITY
XMODIFIERS
XENVIRONMENT







/usr/share/X11/app-defaults/.
xrdb -merge $HOME/.Xresources

xorg.conf

xorg.conf, which section is concerned with fonts?
B. the Files section





/usr/lib/xorg /usr/include/xorg


/usr/share/X11/xkb/rules/xorg.lst

The section names are:

Files          File pathnames
ServerFlags    Server flags
Module         Dynamic module loading
Extensions     Extension enabling
InputDevice    Input device description
InputClass     Input class description
OutputClass    Output class description
Device         Graphics device description
VideoAdaptor   Xv video adaptor description
Monitor        Monitor description
Modes          Video modes descriptions
Screen         Screen configuration
ServerLayout   Overall layout
DRI DRI-specific configuration
Vendor         Vendor-specific configuration



/etc/X11/<cmdline>
/usr/etc/X11/<cmdline>
/etc/X11/$XORGCONFIG
/usr/etc/X11/$XORGCONFIG
/etc/X11/xorg.conf
/etc/xorg.conf
/usr/etc/X11/xorg.conf.<hostname>
/usr/etc/X11/xorg.conf
/usr/lib/X11/xorg.conf.<hostname>
/usr/lib/X11/xorg.conf


/usr/bin/X11 /usr/lib/X11 /etc/X11 /usr/include/X11 /usr/share/X11


(iptables -L | sed '/^\*filter/,/^COMMIT/d')







dbus-daemon - Message bus daemon
D-Bus is first a library that provides one-to-one communication between any
       two applications

There are two standard message bus instances: the systemwide message bus (installed on many systems as the
       "messagebus" init service) and the per-user-login-session message bus (started each time a user logs in).
       dbus-daemon is used for both of these instances, but with a different configuration file.


--config-file=/usr/share/dbus-1/system.conf

--config-file=/usr/share/dbus-1/session.conf

The systemwide daemon is largely used for broadcasting system events, such as changes to the printer queue, or
       adding/removing devices
The per-session daemon is used for various interprocess communication among desktop applications (however, it
       is not tied to X or the GUI in any way).

SIGHUP will cause the D-Bus daemon to PARTIALLY reload its configuration file and to flush its user/group
       information caches. S


--introspect
--systemd-activation

DBUS_VERBOSE=1 dbus-daemon --session --print-address

dbus-monitor                       Monitor messages going through a D-Bus message bus
dbus-monitor --session             Monitor session messages (default)
dbus-monitor --system              Monitor system messages


udevadm monitor
udevmonitor Show all kernel uevents and udev messages
udevadm info --attribute-walk --name=/dev/sda Print all attributes of device /dev/sda in udev rules key format


/run      Dynamic, non-persistent application runtime date
/var      Dynamic configuration data, such as FTP and www






The  variable environ points to an array of pointers to strings called the "environment".





/usr/src/linux/.config Kernel configuration file




show all hard disks found by the kernel during boot
dmesg | grep "[hs]d[a-z]"




shows the usb controllers on the system
lspci | grep -i usb

usbmgr			# handles loading/unloading of hotplug devices




lsusb -tv
lsusb -s 06:1


## ============================= ##
USB || 1.0 || 12mbps	|| 127 Devices	|| UHCI OHCI ||
USB || 2.0 || 480mbps	|| EHCI controllers are 
USB || 3.0 || 4.8Gb[s]
## ============================= ##

Human Interface Device (HID)
	Input devices (mice, keyboards, etc.)






usb hub can support 7 devices
root hub supports up to 127 devices in total


### ========================== ###
###### Data Measurements: #######
### ========================== ###
There are 8 bits per byte
Bytes Per Second (Bps)
Megabytes Per Second (MBps)
Gigabits Per Second (Gbps)
## ========================== ##




PCI device drivers call pci_register_driver() during their
initialization with a pointer to a structure describing the driver

A PCI Express Port is a logical PCI-PCI Bridge structure. There
are two types of PCI Express Port: the Root Port and the Switch
Port. The Root Port originates a PCI Express link from a PCI Express
Root Complex and the Switch Port connects PCI Express links to
internal logical PCI buses.



#########################################################################################
lspci -mm		# Produce machine-readable output (single -m for an obsolete format)
lspci -t		# Show bus tree
lspci -k		# Show kernel drivers handling each device
#########################################################################################
lspci -x		# Show hex-dump of the standard part of the config space
lspci -xxx		# Show hex-dump of the whole config space (dangerous; root only)
lspci -xxxx		# Show hex-dump of the 4096-byte extended config space (root only)
lspci -b		# Bus-centric view (addresses and IRQs as seen by the bus)
lspci -D		# Always show domain numbers
#########################################################################################
Resolving of device IDs to names:
#########################################################################################
lspci -n		# Show numeric IDs
lspci -nn		# Show both textual and numeric IDs (names & numbers)
lspci -q		# Query the PCI ID database for unknown IDs via DNS
lspci -qq		# As above, but re-query locally cached entries
lspci -Q		# Query the PCI ID database for all IDs via DNS
#########################################################################################


lsdev










#######################################################
Load settings from all system configuration files.
#######################################################
cat /run/sysctl.d/*.conf
cat /etc/sysctl.d/*.conf
cat /usr/local/lib/sysctl.d/*.conf
cat /usr/lib/sysctl.d/*.conf
cat /lib/sysctl.d/*.conf
cat /etc/sysctl.conf
#######################################################
/sbin/sysctl -a
/sbin/sysctl -n kernel.hostname
/sbin/sysctl -w kernel.domainname="example.com"
/sbin/sysctl -p /etc/sysctl.conf					# loads setting from /etc/sysctl.conf and modifies kernel parameters at runtime
/sbin/sysctl -a --pattern forward
/sbin/sysctl -a --pattern forward$
/sbin/sysctl -a --pattern 'net.ipv4.conf.(eth|wlan)0.arp'
/sbin/sysctl --system --pattern '^net.ipv6'
#######################################################
sysctl fs.file-max
sysctl fs.file-max=102400
cat /etc/sysctl.conf


cat /proc/sys/net/ipv4/ip_forward  # Check IP forward 0=off, 1=on


edit /etc/sysctl.conf with:
net.ipv4.ip_forward = 1








/etc/lilo.conf
/sbin/lilo



ld.so, ld-linux.so* - dynamic linker/loader
/lib/ld-linux.so.{1,2}
              ELF dynamic linker/loader
       /etc/ld.so.cache
              File containing a compiled list of directories in which to search for libraries and an ordered  list  of
              candidate libraries.
       /etc/ld.so.preload
              File containing a whitespace-separated list of ELF shared libraries to be loaded before the program.


-d --data-relocs
              Perform relocations and report any missing objects (ELF only).

       -r --function-relocs
              Perform  relocations  for  both  data objects and functions, and report any missing objects or functions
              (ELF only).









/etc/ld.so.conf				# list shared paths to cache with ldconfig
/etc/ld.so.cache

ldconfig –p				# display current cache
ldconfig –n 			# process only specified dir 
ldconfig –v				# verbouse display
ldconfig –N				# dont rebuild cache
ldconfig -X				# update the cache but not manage links
ldconfig –f				# use a new config file
ldconfig –C				# use a new cache file 
ldconfig –r				# use a new root 


ldconfig -p | grep ncurses









shopt -s			# set
shopt -u			# unset


set | grep $USER                   # List the current environment
whatis grep                        # Display a short info on the command or word 
whereis java                       # Search path and standard directories for word 
setenv varname value               # Set env. variable varname to value (csh/tcsh) 
export varname="value"             # set env. variable varname to value (sh/ksh/bash) 


apt-config dump




apt-get dselect-upgrade





dpkg-deb -b || --build <.deb>    	 ## Build a deb package.
dpkg-deb -c || --contents <.deb>     ## List contents of a deb package.
dpkg-deb -e || --control <.deb>      ## Extract control-information from a package.
dpkg-deb -x || --extract <.deb>      ## Extract the files contained by package.
dpkg-deb -X || --vextract <.deb>     ## Extract and display the filenames contained by a package.
dpkg-deb -f || --field  <.deb>       ## Display control field(s) of a package.
dpkg-deb --ctrl-tarfile <.deb>       ## Output the control tar-file contained in a Debian package.
dpkg-deb --fsys-tarfile <.deb>       ## Output the filesystem tar-file contained by a Debian package.
dpkg-deb -I || --info <.deb>         ## Show information about a package.




dpkg-query 

dpkg-query -l || --list <.deb>           ## List packages matching given pattern.
dpkg-query -s || --status <.deb>                 ## Report status of specified package.
dpkg-query -L || --listfiles <.deb>              ## List files installed to your system from package-name.
dpkg-query -S || --search      ## Search for a filename from installed packages.
dpkg-query -p || --print-avail <name>            ## Display details about package-name, as found in


/var/lib/dpkg/available		# Users of APT-based frontends should use apt-cache show package-name instead.





The /etc/bashrc and ~/.bashrc files are used to configure non-login shell sessions,


When a login shell is run, the bash shell program searches for
configuration files in the following order: 
~/.bash_profile
~/.bash_login
~/.profile





uname -s       # Kernel Name
uname -m       # Machine Name
uname –r		# Kernel Release
uname -p		# return information about your CPU
uname -i		# Hardware platform information
uname -o		# returns the OS name





tzselect
tzconfig						## Set the timezone, stored in /etc/timezone
dpkg-reconfigure tzdata




IDE drive partition limit: 63
SCSI drive partition limit: 15

MBR holds the partition table and bootstrap code
at the first 512kb of the disks
first sector of the disks


/etc/inittab:						# directs boot process after kernel has loaded
id:runlevel:action:process





partition types:

Primary - only 4 can exists
Extended - only 1 can exist. and is a container for logical partitions
Logical


Logical partitions are numbered 5 and up 
and they reside in an extended partition
and extended partitions have a number between 1 and 4







LBA (Logical Block Adressing)


sndconfig           # used to reconfigure sound drivers





single user mode:
1/s/S


hotplug
usbmgr





Both the :exit and :wq commands will save any changes to the
current file and then close the vi editor.


The d$ command deletes from the insertion point to the end of the line.
The text is saved in a memory buffer.




a hard link, the link file and the target file share the same inode.





The LC_CTYPE environment variable specifies the default character
type and encoding for your Linux system.




Stage 2 presents a graphical menu on the screen that allows the user to
select the kernel image that should be loaded.



The /etc/inittab file is used to determine what happens when a user
presses CTRL - ALT - DEL .


The init q command will tell init that changes have been made to
/etc/inittab and that it needs to re-read its configuration.



Linux distributions that use System V init scripts store them in the
/etc/rc.d/init.d directory.

#####################################################################################################
shutdown -f			# skip fsck on next reboot
shutdown -F         # force fsck on next reboot
shutdown -k         # send warning of impending shutdown, but dont shutdown
shutdown -t			# wait X seconds before shutting down
shutdown −h now "Warning system malfunction, self−destruct imminent"
shutdown −r now "Warning system rebooting, all files will be destroyed"
+m – m minutes in the future
–P – powers off 
#####################################################################################################



#####################################################################################################
fsck -N				# dont execute, just show what could be done
fsck -As			# Check and repair serially all filesystems listed in /etc/fstab
fsck -f /dev/sda1	# Force a filesystem check on /dev/sda1 even if it thinks is not necessary

fsck -fv /dev/sda1	# Force another check, this time with verbose output:
fsck -y /dev/sda1	# During filesystem repair, do not ask questions and assume that the answer is always yes
#####################################################################################################


#####################################################################################################
fsck.ext2 -c /dev/sda1		# Check a ext2 filesystem, running the badblocks command
e2fsck -c /dev/sda1			# mark all bad blocks and add them to the bad block inode to prevent 
							# them from being allocated to files or directories
#####################################################################################################
e2fsck -p		## Automatic repair (no questions)
e2fsck -n		## Make no changes to the filesystem
e2fsck -y		## Assume "yes" to all questions
e2fsck -c		## Check for bad blocks and add them to the badblock list
e2fsck -f		## Force checking even if filesystem is marked clean
e2fsck -v		## Be verbose

e2fsck -b superblock			## Use alternative superblock
e2fsck -B blocksize				## Force blocksize when looking for superblock
e2fsck -j external_journal		## Set location of the external journal
e2fsck -l bad_blocks_file		## Add to badblocks list
e2fsck -L bad_blocks_file		## Set badblocks list


dpkg-scanpackages




Globally Unique Identifier (GUID) Partition Table (GPT)


#####################################################################################################
?		# Matched at most once.
*		# The preceding item will be matched zero or more times.
+		# The preceding item will be matched one or more times.
{n}		# The preceding item is matched exactly n times.
{n,}	# The preceding item is matched n or more times.
{,m}	# The preceding item is matched at most m times.  This is a GNU extension.
{n,m}	# The preceding item is matched at least n times, but not more than m times..*	    # match zero or more characters 
[\^$.|?*+()                          # special characters any other will match themselves 
\                                    # escapes special characters and treat as literal 
*                                    # repeat the previous item zero or more times 
.                                    # single character except line break characters 
.*                                   # match zero or more characters 
^                                    # match at the start of a line/string 
$                                    # match at the end of a line/string 
.$                                   # match a single character at the end of line/string 
^ $                                  # match line with a single space 
^[A‐Z]                               # match any line beginning with any char from A to Z 

#### ================== Comparison operators: ======================= ####
 ||^ $|| 					  	   ||
 ||^[A‐Z]|| 					   ||
 || ? || 	   ||
 || + ||    ||
 ||  {n}|| 			   ||
 || {n,}|| 				  	   ||
 || {,m}|| 		       ||
 ||{n,m}|| 					   ||
 || ===================================================================||
####														  		  ####


==========================================================================================
;                               # command separator
( )                               # execute commands in subshell
{ }                               # execute commands in current shell
#                               # comments
$var                               # variable
&                               # execute in the background
`                               # substitute standard out
‘                               # quote all characters in a string
“                               # as ‘ but allow substitution
==========================================================================================

Summarize the structure of regular expressions. Regular expressions are strings that
describe other strings.

Explain the purpose of pipes. Pipes tie programs together by feeding the standard output
from the fi rst program into the second program’s standard input.


==========================================================================================
 Range Expression:		a[2-4]z	==>	a2z,a3z,a4z
 Single Character:			a.z	==> a2z,abz,aqz
 Start Line:				^bc ==> abc,bbc,dbc
 End Line:					ab$ ==>	abc,abe,ab9		
 Repetition operator: 		ab* ==> ab0,ab2			## denotes zero or more occurances
					 		ab+ ==> ab1,ab2
					 		ab? ==> ab1				## zero or one match

The vertical bar	 	  ( | ) ==> car|truck		## Multiple Possible Strings

grep eth[01] /etc/*
grep -E “(twain\.example\.com|bronto\.pangaea\.edu).*127” /etc/*
==========================================================================================


$0 		the name of the script, 
$1 		first parameter to the script, 
$2 		second parameter

#### ================== Comparison operators: ======================= ####
 || =~ || Matching regular expression. [regex]					  	   ||
 || >| || Send output (overwrite) reguardless of shell’s noclobber	   ||
 || !~ || Not matching regular expression. [regex]					   ||
 ||  = || Equal to. [number, size, percent, string, string list]	   ||
 || != || Not equal to. [number, size, percent, string, string_list]   ||
 || >= || Greater than or equal to. [number, size, percent]			   ||
 ||  > || Greater than. [number, size, percent]					  	   ||
 || <= || Less than or equal to. [number, size, percent]		       ||
 || <  || Less than. [number, size, percent]						   ||
 || ===================================================================||
####														  		  ####

egrep ’(yes|no)’ ‘cat list‘
egrep ’(yes|no)’ $(cat list)
egrep ’(yes|no)’ $(< list)

cp {*.doc,*.pdf} ~


$?			# return code from last program
$IFS		# Internal File Separator
IFS=’ chars ’	## Input field separators; default is space, tab, and newline.


PROMPT_COMMAND= command
PS1= string
PS2= string
PS3= string
PS4= string

If set, Bash executes this command each time before printing the
primar y prompt.
Primar y prompt string; default is $ .
Secondar y prompt (used in multiline commands); default is > .
Pr ompt string in select loops; default is #? .
Pr ompt string for execution trace ( bash -x or set -x ); default
is + .


 || cmd1 ; cmd2	|| 			   ||
 ||{ cmd1 ; cmd2 ; } || 			   ||
 ||  || 			   ||
 ||  || 			   ||
 ||  || 			   ||
 || 



( cmd1 ; cmd2 )
cmd1 | cmd2
cmd1 ‘ cmd2 ‘
cmd1 $( cmd2 )
cmd $(( expression ))

Command sequence; execute multiple cmds on the same line.
Execute commands as a group in the current shell.
Execute commands as a group in a subshell.
Pipe; use output from cmd1 as input to cmd2.
Command substitution; use cmd2 output as arguments to cmd1.
POSIX shell command substitution; nesting is allowed.
POSIX shell arithmetic substitution. Use the result of expression as
argument to cmd.
#####################################################################################################
___________________________________________
• [:upper:] || uppercase letters
• [:lower:] || lowercase letters
• [:alpha:] || alphabetic (letters) meaning upper+lower (both uppercase and lowercase letters)
• [:digit:] || numbers in decimal, 0 to 9
• [:alnum:] || alphanumeric meaning alpha+digits (any uppercase or lowercase letters or any decimal digits)
• [:space:] || whitespace meaning spaces, tabs, newlines and similar
• [:graph:] || graphically printable characters excluding space
• [:print:] || printable characters including space
• [:punct:] || punctuation characters meaning graphical characters minus alpha and digits
• [:cntrl:] || control characters meaning non−printable characters
• [:xdigit:]|| characters that are hexadecimal digits.
=========================================================================================================

#####################################################################################################
cat -n                          Numbering lines
cat -b                          Numbering non-blank lines
wc -c                           Counting chars
wc -w                           Counting words
wc -l                           Counting lines
head                            Printing the first lines
tail                            Printing the last lines
=========================================================================================================

nl -v1 poop.txt
nl -l1 poop.txt
nl -i2 poop.txt
nl -s. poop.txt
nl -s. -w7 poop.txt
nl -s'.) ' poop.txt

=========================================================================================================

=========================================================================================================
uniq		## outputs file without duplicate lines from input file
expand -t 8		## set tabs every 8 columns
join file1 file2
uniq        ## Make duplicate lines unique
uniq -d     ## Print duplicated lines of input
uniq -u     ## Remove all duplicated lines
uniq -D     ## print all duplicate lines
uniq -c		## --count prefix lines by the number of occurrences
=========================================================================================================
To print only lines that never repeat in the input, use the -u option:
sort file | uniq -u

To print only lines that do repeat in the input, use the -d option:
sort file | uniq -d



#####################################################################################################



echo {1..9} | xargs -n3

1 2 3
4 5 6
7 8 9



find / -type f | xargs -n 1 grep -H linux		## grep a long list of files, one by one, for the word “linux”:


touch file{1..9}.jpg
touch file{1..9}.txt









cp myfile.{txt,bak}

[!kxw]              # Matches any character except k, x, or w





vi Editor

Command mode
Ex mode
Insert mode

Vi yank (term) 	yank is used for referrencing copy in Vi 



             ^
             k              Hint:  The h key is at the left and moves left.
       < h       l >               The l key is at the right and moves right.
             j                     The j key looks like a down arrow.
             v
----------------------------
| k (up)    j (down)     |
----------------------------
| h (left)  l (right)    |
----------------------------


Press |<ESC>| To place you in Normal mode
Press | :wq | To save a file and exit.
Press |  A  | Append text.
Press | dd  | Delete current line
Press | dw  | To delete a word.


?<word>	|| Searches backward for the word goodbye.

$	|| Move to end of line
3dd	|| Deletes (d) three lines (3d), beginning at the current line.
3dw	|| Deletes (d) the next three words (3w).
ZZ	|| Save the current changes to the fi le and exit from vi.


:w		|| Save the current file but continue editing.
:!pwd	|| Current directory
:!date	|| Current date and time


Ctrl+f	|| Page ahead, one page at a time.
Ctrl+b	|| Page back, one page at a time.
Ctrl+d	|| Page ahead one-half page at a time.
Ctrl+u	|| Page back one-half page at a time.


yy	|| Copy current line
yyp	|| Duplicate current line
G	|| Move to end of file
1G	|| Move to beginning of file i.e. to line 1

Press |  x  | To delete the character under the cursor.
Press |  i  | To insert text.
Press | :q! | To trash all changes.

Press | dd  | To delete a line
Press | 2dd | To delete 2 lines
Press | 7l  | To move curser left 7 characters
Press | ZZ  | To Exit Saving Changes
Press | d$  | To deletes from the insertion point to the end of the line.
Press |  o  | To open text
Press |  G  | To go to a line
Press | 1G  | Move to the first line of the file
Press | yy  | Copy line (word) after cursor
Press |  P  | Paste after cursor
Press |  u  | Undo last modification
Press |  U  | Undo all changes to current line
Press |   | To 
Press |   | To 
Press |   | To 
Press |   | To 

n       Search for next instance of string
N       Search for previous instance of string
{       Move a paragraph back
}       Move a paragraph forward
       
nG       Move to the n th line of the file
G       Move to the last line of the file
:%s/OLD/NEW/g       Search and replace every occurrence
dd (dw)       Cut current line (word)
D       Cut to the end of the line
x       Delete (cut) character
 (yw)       
P       Paste after cursor
u       Undo last modification
U       Undo all changes to current line

l, inserts text @ beginning of current line
a, inserts text after the curser



Ctrl+U moves up half a screen
Ctrl+D moves down half a screen
Ctrl+F moves down almost a full screen
Ctrl+E scrolls down 1 line @ a time
Ctrl+Y scrolls up 1 line @ a time





i   type inserted text   <ESC>         insert before the cursor
A   type appended text   <ESC>         append after the line



Press | :q! | to discard all changes to the file since the last save and exit the editor.









## ============================================================================= ##
top

m			# 
## ============================================================================= ##
top –p pid		# to monitor specific process, can specify up to for PID
top –n iter		# top displays certain number of updates (iterations) and stops
top –b 			# batch mode, top doesn't use the normal screen– update cmds
## ============================================================================= ##

top –bi -n 5 -d 1 > file1		## -b (batch) 
								## -n option, with its argument, indicates five iterations
								## -i eliminates idle processes
								## -d option indicates a one-second interval
## ============================================================================= ##
top when running cmds
## ============================================================================= ##
r	# changes priority with this cmd, asks for PID number
s 	# displays update rate
P	# sort by CPU usages
s	# update rate
M	# sort by memory usage
## ============================================================================= ##








## ============================================================================= ##
Globally Unique Identifier (GUID) Partition Table (GPT)
gdisk 
gdisk -l


gdisk --list
gdisk --machine

parted print devices
parted print free
parted print list
parted print all
## ============================================================================= ##




## ============================================================================= ##
mkswap 

mkswap -p		## Specify the page size (in bytes) to use.
mkswap -L		## Specify a label for the device,
mkswap -c		## Check the device (if it is a block device) for bad blocks before creating the swap  area.
mkswap -U		## specify the uuid

mkswap -L label /dev/sda

## ============================================================================= ##






mkswap /dev/hda5
Setting up swapspace version 1, size = 139792384 bytes






touch -m		## change only the modification time
touch -a		## change only the access time
touch -d		## parse STRING and use it instead of current time
touch -r		## use files times instead of current time


export		## sets environmental variable to be loaded into system
exec		## run external program that you can specify











mkdir /tmp/poo || echo "oops"      # the || is an OR  logical operator
"!$"                               # last arguement of previous commands
$PS1                               # bash prompt variable















## =================================================== ##
#!/bin/sh
################################################################################
## first convert each sequence of punctuation and blank characters to single  ##
## newline.  That puts each “word” on a line by itself.  Next it maps		  ##
## all uppercase characters to lower case, and finally it runs ‘uniq’		  ##
## with the ‘-d’ option to print out only the words that were repeated.		  ##
################################################################################

          cat -- "$@" \
            | tr -s '[:punct:][:blank:]' '[\n*]' \
            | tr '[:upper:]' '[:lower:]' \
            | uniq -d

## =================================================== ##









2>             # direct standard error to a file


newaliases					# Forces the mail server to read the /etc/aliases or /etc/mail/aliases file after it is changed










## ============================================================================= ##
lsof -c bash             # open files in bash
lsof -i					 # list all open net connections
lsof -a -c bash -u root	 # open files by bash as root user


## ============================================================================= ##

=====================================================================
netstat -in	|			# Stat of interfaces using numeric hosts
netstat -i --numeric-host
=====================================================================

netstat -st			# Statistics of the tcp protocol
netstat‐nat ‐n                # show all connections with IPs
## ============================================================================= ##




ar xv
tar zxvf





xf86config
XF86setup








/etc/network/interfaces
auth eth0
iface eth0 inet dhcp



## ============================================================================= ##
OHCI - open host controller interface
UHCI - universal host controller interfaces
EHCI - enhanced host controller interfaces
## ============================================================================= ##








lpc status
lprm
/etc/cron.deny






/etc/ssh/ssh_known_hosts









e2fsck
fsck.ext3


## ============================================================================= ##

file -L "${path}" | grep -q 'dynamically linked'

ldd /usr/bin/init | grep libwrap
ldd /usr/sbin/xinetd
ldd $file | grep -c libwrap


echo "verify if xinetd includes a TCP wrapper"
strings /sbin/portmap | egrep "hosts.deny|hosts.allow|libwrap"
strings /usr/sbin/rpc.rquotad | egrep "hosts.deny|hosts.allow|libwrap"
ldd /usr/sbin/rpc.rquotad | grep libwrap

echo "check if xinetd is enabled and running"
chkconfig --list xinetd
echo "check status of xinetd"
/etc/init.d/xinetd status
echo "check which Unix services are active and controlled by xinetd"
chkconfig --list | awk '/xinetd based services/,/""/'
echo "list of only active services for which xinetd monitors the ports"
chkconfig --list | awk '/xinetd based services/,/""/' | grep -v off


which rpm | xargs ldd -v

## ============================================================================= ##


objdump -p /path/to/program | grep NEEDED




















/sbin/init			# started at boot time by the sysV init


systemd unit=rescue.target


udev /dev devtmpfs


|| ESC-l ||	Move cursor right one character.
|| ESC-h ||	Move cursor left one character.
|| ESC-w ||	Move cursor right one word.
|| ESC-b ||	Move cursor left one word.
|| ESC-0 ||	Move cursor to start of line.
|| ESC-$ ||	Move cursor to end of line.


ESC-x ... Delete char under cursor.
 ctrl-BACKSPACE   ESC-BACKSPACE ........... Delete word to left of cursor.
 ctrl-DELETE .... ESC-DELETE .... ESC-X ... Delete word under cursor.


Esc+U	## converts word curser is currently hovering overs first letter to capital



___________________________________
||Action|| Keyboard shortcut ||
==================================
|| DEL  ||  Scroll backward one screenful.
|| SPC  ||  Scroll forward one screenful.
|| Home ||  Go to the beginning of this node.
|| End  ||  Go to the end of this node.
=====================================================
|| TAB  || Skip to the next hypertext link.
|| RET  || Follow the hypertext link under the cursor.
=====================================================
|| l ||  Go back to the last node seen in this window.
=====================================================
##########################################################################

⌘

__________________________________
|| Action || Keyboard shortcut ||
==================================
|| Ctrl+Alt <-	|| Move to workspace left
|| Ctrl+Alt ->	|| Move to workspace right
=====================================================
|| Super+A || Show the list of applications.
|| Super+Page Up ||	Switch between workspaces
|| Super+Page Down || Switch previous workstation
|| Super+Page Up	|| above to workspace above
|| Super+Page Down	|| Move to workspace below
=====================================================
|| Alt+F6 || Cycle through windows in the same application. Hold down the || Alt key and press F6 until the window you want is highlighted, then release || Alt. This is similar to the || Alt+` feature.
|| Alt+Esc || Cycle through all open windows on a workspace.
=====================================================
##########################################################################

__________________________________
|| Action || Keyboard shortcut ||
==================================
|| Super+L   || Lock screen
|| Super+M   || Show the message tray
|| Super+N   || Focus the active notification
|| Super+A   || Show all applications
|| Super+F10 || Open the application menu
===============================================
|| Ctrl+Alt+Delete || Log out
===============================================
|| Ctrl+Alt+Tab || Give keyboard focus to the top bar.
				|| In the Activities overview,
===============================================

__________________________________
|| Action || Keyboard shortcut ||
==================================
|| Shift+Ctrl+T || New Tab
|| Shift+Ctrl+N || New Window
|| Shift+Ctrl+W || Close Tab
|| Shift+Ctrl+Q || Close Window
========================================================
|| Ctrl++ || Zoom In
|| Ctrl+- || Zoom Out
|| Ctrl+0 || Normal Size
========================================================


__________________________________
|| Action || Keyboard shortcut ||
==================================
|| Ctrl+Page Up 	|| Switch to Previous Tab
|| Ctrl+Page Down 	|| Switch to Next Tab
|| Shift+Ctrl+Up 	|| Scroll up by one line
|| Shift+Ctrl+Down 	|| Scroll down by one line
=====================================================
|| Shift+Ctrl+Page Up 	|| Move Tab to the Left
|| Shift+Ctrl+Page Down ||	Move Tab to the Right
=====================================================




__________________________________
|| Action || Keyboard shortcut ||
==================================
|| Ctrl+W || Erase a word
|| Ctrl+U || Erase a line
|| Ctrl+A || Move to the start of the line
|| Ctrl+E || Move to the end of the line
|| Ctrl+B || Move back one character
|| Alt+B  || Move back one word
|| Ctrl+F || Move forward one character
|| Alt+F  || Move forward one word
=====================================================
|| Ctrl+u || Delete from the cursor to the beginning of the line.
|| Ctrl+K || Delete from the cursor to the end of the line.
|| Ctrl+W || Delete from the cursor to the start of the word.
=====================================================================
|| Esc+Del 		 || Delete previous word
|| Esc+Backspace || Delete previous word
=====================================================================
|| Ctrl+Y || Pastes text from the clipboard.
|| Ctrl+L || Clear the screen leaving the current line at the top of the screen.
|| Ctrl+R || Reverse incremental search of history
|| Alt+P  || Reverse non-incremental search of history
=====================================================================
|| Ctrl+Alt+Shift+R || Start and end screencast recording.
=====================================================================
|| Alt+F2	|| Show the run command prompt
|| Alt+F1	|| Show the activities overview
|| Alt+F10	|| Toggle maximization state
=====================================================================



||  ||	
||  ||	
||  ||	
||  ||	

||  ||	
||  ||	
||  ||	
||  ||	
||  ||	
||  ||	
||  ||	
||  ||	





## ============================================================================= ##
Ctrl + P - previous line
Ctrl + K - kill to end of line
Ctrl + Y - paste (yank) text
## ============================================================================= ##
CTRL + A - Start of the line, and 
CTRL + E - End of the line.
CTRL + K - Cut or delete what is currently in front of the cursor.
CTRL + Y - Paste the last thing you deleted
CTRL + W - cut or delete the entire line that has being typed.
## ============================================================================= ##
Ctrl + C – halts the current command
Ctrl + Z – stops the current command, resume with fg in the foreground or bg in the background
Ctrl + D – log out of current session, similar to exit
Ctrl + W – erases one word in the current line
Ctrl + U – erases the whole line
Ctrl + R – type to bring up a recent command
## ============================================================================= ##
Ctrl + R - Backwards search
Ctrl + S - Searches Forwards
Ctrl + G - terminates a search
Ctrl + A - moves curser to start
Ctrl + E - moves curser to the end
Ctrl + B - 
Ctrl + F - moves one character
Ctrl + D - Deletes character
Ctrl + K - deletes text from curser to end
Ctrl + X - Deletes text from cursor the beginning of line
Ctrl + L - Clear terminal
Ctrl + U - Deletes the lines
Ctrl +
Ctrl +
## ============================================================================= ##




Ctrl + A - moves curser to start
Ctrl + E - moves curser to the end
Ctrl + L - Clear terminal




















## ============================================================================= ##
df --print-type --total --inodes --si --human-readable --all
## ============================================================================= ##
df -B			# df --block-size=
df -H			# df --si
df -t			# df --type=
df -T			# df --print-type
df -k			# df --block-size=1K
## ============================================================================= ##


du --apparent-size --block-size=1

du -k . |xdu", "sudo du -k -x / |xdu

## ============================================================================= ##
du --exclude='*.o'
du -ks * | sort -n -r			## Sort everything by size in kilobytes
du -cs /home/* | sort -nr		## Show summary, sort results largest to smallest disk
du -csh /home/*					## human-readable output
du -Ss /etc				## but not in subdirectories beneath it:
du -csh				## du --total --summarize --human-readable
du -sh * 			## du --human-readable --summarize
## ============================================================================= ##
du -k || --block-size=1K		## equivalent to '--apparent-size --block-size=1K'
du -m || --block-size=1M		## equivalent to '--apparent-size --block-size=1M'
du -S || --separate-dirs		## for directories do not include size of subdirectories
du -P || --no-dereference		## dont follow any symbolic links (this is the default)
du -b || --bytes				## equivalent to '--apparent-size --block-size=1'
du -D || --dereference-args		## dereference only symlinks that are listed on the command line
## ============================================================================= ##





ls --directory				# ls -d



lsof /var/lib/mysql/mysqld.pid               # List all processes which are using a specific file







dbus-monitor "type='signal',sender='org.gnome.TypingMonitor',interface='org.gnome.TypingMonitor'"





systemctl isolate rescue.target				# Enter single/rescue mode







strings /sbin/init | grep -i systemd
strings /sbin/init | grep -i upstart
initctl list | grep start/running
systemctl list-unit-files --type=service | grep -v disabled
systemctl list-unit-files --type=service | grep -v enabled

systemctl show --property "WantedBy" getty.target
systemctl show --property "Requires" multi-user.target

ls -al /lib/systemd/system/runlevel*.target
ls -al /etc/systemd/system/default.target



systemctl list-units | grep .target
systemctl list-units | grep .service
systemctl list-unit-files --type=service
systemctl list-unit-files --type=target

initctl status start-ttys
cat /etc/init/start-ttys.conf
initctl list
ls -al /etc/rc.d/rc?.d/






mount ‐t tmpfs ‐osize=64m tmpfs /memdisk 		# Create a memory file system


## ============================== ##
echo "Linux with losetup Method 1"
## ============================== ##
#####################################################################################
dd if=/dev/zero of=/usr/vdisk.img bs=1024k count=1024 		# Creates the loop img
#####################################################################################
mkfs.ext3 /usr/vdisk.img				# make a ext3 loop in dev
mount ‐o loop /usr/vdisk.img /mnt		# mount loop in directory
umount /mnt; rm /usr/vdisk.img			# Cleanup unmount and remove
#####################################################################################

## ============================= ##
echo "Linux with losetup Method 2"
## ============================= ##
dd if=/dev/urandom of=/usr/vdisk.img bs=1024k count=1024		# Creates the loop img 
#####################################################################################
losetup /dev/loop0 /usr/vdisk.img	# Creates and associates /dev/loop0 
mkfs.ext3 /dev/loop0 				# make a ext3 loop in dev
mount /dev/loop0 /mnt 			# mount loop on mnt
losetup ‐a                      # Check used loops 
umount /mnt 					# unmount loop
losetup ‐d /dev/loop0           # Detach 
rm /usr/vdisk.img				# remove loop image
#####################################################################################








================================================================================================================================
xfsdump -v trace -f /dev/tape /						## Dump the root filesystem with tracing activated for all subsystems:	
================================================================================================================================
xfsdump -v drive=debug,media=debug -f /dev/tape /	## To enable debug-level tracing for drive and media operations:
================================================================================================================================
xfsdump -v trace,drive=debug -f /dev/tape /			##	To enable tracing for all subsystems, and debug level tracing for drive operations only:	
================================================================================================================================
xfsdump -e -v excluded_files=debug -f /dev/tape /	##	To list files that will be excluded from the dump:	
================================================================================================================================

================================================================================================================================

================================================================================================================================

================================================================================================================================





mkfs.xfs –q /dev/sdb1		## Create an XFS filesystem on /dev/sdb1:

xfs_info /dev/sdb1		## Query the filesystem for information:

xfs_admin -u /dev/vda1		## UUID associated with the noted LV:

blkid
partx --show /dev/sda
lsblk --fs

findmnt --fstab -t nfs			## Prints all NFS filesystems defined in /etc/fstab.
findmnt --fstab /mnt/foo		## Prints  all  /etc/fstab  filesystems  where  the  mountpoint directory is /mnt/foo.  I mounts where /mnt/foo is a source.
findmnt --fstab --evaluate		## Prints all /etc/fstab filesystems and converts LABEL= and UUID= tags to the real devic

findmnt --fstab --target /mnt/foo		## Prints all /etc/fstab filesystems where the mountpoint directory is /mnt/foo.

findmnt -n --raw --evaluate --output=target LABEL=/boot		## Prints only the mountpoint where the filesystem with label "/boot" is mounted.







mkfs -t ext2 -L rootfs -cv /dev/hda3




dumpe2fs -h /dev/sda1		# Display filesystem's superblock information (e.g. number of mounts, last checks, UUID)

dumpe2fs -b /dev/sda1		# Display blocks that are marked as bad in the filesystem
dumpe2fs /dev/sda1 | grep -i superblock		# Display locations of superblock (primary and backup) of filesystem

dumpe2fs /dev/mapper/ | grep UUID

mount -t debugfs none /sys/kernel/debug

debugfs device 				# Interactive ext2/ext3/ext4 filesystem debugger
debugfs -w /dev/sda1 		# Debug /dev/sda1 in read-write mode







--all
--attributes
--capabilities
--health
--scan
--xall
--info
smartctl -a "/dev/mapper/*"
smartctl -a "/dev/sd[a-z]"
smartctl -a "/dev/sd[a-z]"
smartctl -a /dev/sda		# Print SMART information for drive /dev/sda
smartctl -s off /dev/sda	# Disable SMART monitoring and log collection for drive /dev/sda
smartctl -t long /dev/sda	# Begin an extended SMART self-test on drive /dev/sda

tune2fs -j /dev/sda			# convert ext2 to ext3 FS
tune2fs -C 4 /dev/sda1		# Set the mount count of the filesystem to 4
tune2fs -c 20 /dev/sda1		# Set the filesystem to be checked by fsck after 20 mounts
tune2fs -c 2 /dev/sda1
tune2fs -i 15d /dev/sda1	# Set the filesystem to be checked by fsck each 15 days


tune2fs -l /dev/sda1		# List the contents of the superblock on /dev/sda1:
tune2fs -o acl /dev/sda1

tune2fs -l /dev/mapper/ |grep "mount options"

mount -o acl /dev/sda1 /home/faggot/file
grep vg_ /etc/fstab
grep vg_ /etc/mtab



mkisofs -r -o cdrom.img data/ Create a CD-ROM image from the contents of the target directory.








screen -list
screen -ls
ctrl + a then d               # detach
ctrl + a then c

\


Ctrl­a c create an new window (terminal)
Ctrl­a Ctrl­n and Ctrl­a Ctrl­p to switch to the next or previous window in the list, by number.

ls -laR /var/run/screen/                     # To see all screen sessions on a specific machine
Ctrl + a, Then Press ?                       # To see all commands or parameters on screen.
screen                                       # Open a new screen session
Ctrl + a, Then Press d                       # Detach/Exit from a screen session
Ctrl + a, Then Press Shift + k               # Kill a screen session
screen -r <session_id>                       # Reattach to a screen session
Ctrl + a, Then Press c                       # How to create multiple screen window/tab in a screen session
Ctrl + a, Then Press n                       # How to move to next screen window/tab in a screen session
Ctrl + a, Then Press p                         # How to move to previous screen window/tab in a screen session
Ctrl + a, Then Press                          # How to goto n the screen window/tab
Ctrl + a, Then Press Shift +                          # How to list name of all screen windows/tabs and select from there
Ctrl + a, Then Press 0 -9                         # How to switch to screen window/tab 0 - 9
Ctrl + a, Then Ctrl + a again                         # How to Toggle to the window/tab displayed previously
Ctrl + a, Then Press Shift + a                         # How to change the name of screen window/tab
Ctrl + a, Then Press Shift + c                         # How to clear a screen window/tab
Ctrl + a, Then Press \                       # How to Kill all windows and terminate screen
Ctrl + a, Then Press x                       # How to lock a screen session
Ctrl + a, Then Press Shift + h               # How to log a screen session
screen -L (Capital L)                        # You will find screenlog.0 file in your home directory
screen -r session_id> -p <tab_num_or_name>        # reattach to a specific window/tab in a screen session
screen -D -R                                   # If a session is running, then reattach. If necessary detach and logout remotely first. If it was not running create it and notify the user.
screen -S session_name                         # How to create new screen session and specify a meaningful name for the session.
screen -x                                      # Howto Attach to a not detached screen session.
Ctrl + a, Then Press Shift + s               # Split the Window Horizontally
Ctrl + a, Then Press Shift + \               # Vertically<
Ctrl + a, Then Press Tab                     # Switch between spilted windows
Ctrl + a, Then Type :focus                   # * Here :focus is a command
Ctrl + a, Then Press 0-9                     # In the spited window use following command to open existing session
Ctrl + a, Then Press n or p
Ctrl + a, Then Press Shift + ''
Ctrl + a, Then Type :resize 25               # Resize a splitted window/region
Ctrl + a, Then Type :remove                  # Remove current splitted window/region
Ctrl + a, Then Press Shift + x
Ctrl + a, Then Type :only                    # Remove all spiltted windows/regions except the current one.
Ctrl + a, Then Press Shift +q


                         # How to rename an existing session
screen -ls
screen -x old_session_name
Ctrl + a, Then Type :sessionname new_session_name
*Here :sessionname is a command












journalctl /usr/bin/dbus-daemon

journalctl /dev/sda

journalctl -k -b -1

journalctl _SYSTEMD_UNIT=avahi-daemon.service _PID=28097 + _SYSTEMD_UNIT=dbus.service
journalctl _SYSTEMD_UNIT=avahi-daemon.service _SYSTEMD_UNIT=dbus.service
journalctl _SYSTEMD_UNIT=avahi-daemon.service _PID=28097
journalctl _SYSTEMD_UNIT=avahi-daemon.service








     MUA          --->        MTA            --->        MTA
(Mail User Agent) ---> (Mail Transfer Agent) ---> (Mail Transfer Agent)
mailclient sender ---> SMTP server of sender --->    remote host







ls -al /etc/udev/rules.d/*.rules
ls -al /lib/udev/rules.d/*.rules



Initialize the quota.user file with  quotacheck .
# quotacheck ‐vum /home 
# chmod 644 /home/aquota.user        # To let the users check their own quota 

rw,acl,user_xattr,usrquota 1 1 

edquota -u 
edquota -p			# duplicate quotas of prototypical user specified for each user specified

quotaon
repquota -a		# all filesystems
quotacheck		# checks, writes corrections




|| lsattr ||-R ||  Recursively process directories.
|| lsattr ||-a ||  List all files, including those whose names begin with a dot.
|| lsattr ||-d ||  If listing a directory, do not list its contents, just the directory itself.



_______________________________________________________________________________________
stat ||-L || >> Follow symbolic links and report on the file they point to.			||
stat ||-f || >> Report on the filesystem containing the file, not the file itself.	||
stat ||-t || >> Terse mode: print information on a single line.						||
========================================================================================


_______________________________________________________________________________________
 || || >> 			||
 || || >> 			||
 || || >> 			||
 || || >> 			||
 || || >> 			||
 || || >> 			||
 || || >> 			||
 || || >> 			||
 || || >> 			||
========================================================================================







The + Means Extended Attributes, such as Access Control Lists (ACLs)
______________________________________________________________________
	-rw-rw-r--+ 



The t indicates that theres a sticky bit is set for that directory
drwxrwxr-t


the lowercase s indicates that the owner of the file also has execute permissions.
-rwsr-xr-x

allows the binary to run with the permissions of the owning group

-rwSr-xr-x



l (for a symbolic link)
b (for a block device)





||$ chmod 0710 ||     |-|rwx|--x|---|		  ||$ chmod u=|rwx|,g=x| 		||
||$ chmod 0720 ||     |-|rwx|-w-|---|		  ||$ chmod u=|rwx|,g=w			||
||$ chmod 0740 ||     |-|rwx|r--|---|		  ||$ chmod u=|rwx,g=|r			||
||$ chmod 0744 ||     |-|rwx|r--|r--|		  ||$ chmod a=|r,u+wx			||
||$ chmod 0755 ||     |-|rwx|r-x|r-x|		  ||$ chmod a=|rx,u+w			||
||$ chmod 0775 ||     |-|rwx|rwx|r-x|		  ||$ chmod a=|rwx,o-w			||
||$ chmod 0776 ||     |-|rwx|rwx|rw-|		  ||$ chmod a=|rwx,o-x			||
||$ chmod 0777 ||     |-|rwx|rwx|rwx|		  ||$ chmod a=|rwx				||
||$ chmod 2755 ||     |-|rwx|r-s|r-x|		  ||$ chmod a=|r,uo+x|,g+s,u+w	||
||$ chmod 2775 ||     |-|rwx|rws|r-x|		  ||$ chmod a=|r,uo+x,g+s,ug+w	||
||$ chmod 4420 ||     |-|r-S|-w-|---|		  ||$ chmod u=|r,u+S,g+w		||
||$ chmod 4655 ||     |-|rws|r-x|r-x|		  ||$ chmod a=|r,go+x,u+sw		||
||$ chmod 4755 ||     |-|rwS|r-x|r-x|		  ||$ chmod a=|r,go+x,u+w,g+S	||



||$ chmod 0710 ||	||$ chmod u=|rwx|,g=x| 		 ||     |-|rwx|--x|---|
||$ chmod 0720 ||	||$ chmod u=|rwx|,g=w		 ||     |-|rwx|-w-|---|
||$ chmod 0740 ||	||$ chmod u=|rwx,g=|r		 ||     |-|rwx|r--|---|
||$ chmod 0744 ||	||$ chmod a=|r,u+wx			 ||     |-|rwx|r--|r--|
||$ chmod 0755 ||	||$ chmod a=|rx,u+w			 ||     |-|rwx|r-x|r-x|
||$ chmod 0775 ||	||$ chmod a=|rwx,o-w		 ||     |-|rwx|rwx|r-x|
||$ chmod 0776 ||	||$ chmod a=|rwx,o-x		 ||     |-|rwx|rwx|rw-|
||$ chmod 0777 ||	||$ chmod a=|rwx			 ||     |-|rwx|rwx|rwx|
||$ chmod 2755 ||	||$ chmod a=|r,uo+x|,g+s,u+w ||     |-|rwx|r-s|r-x|
||$ chmod 2775 ||	||$ chmod a=|r,uo+x,g+s,ug+w ||     |-|rwx|rws|r-x|
||$ chmod 4420 ||	||$ chmod u=|r,u+S,g+w		 ||     |-|r-S|-w-|---|
||$ chmod 4655 ||	||$ chmod a=|r,go+x,u+sw	 ||     |-|rws|r-x|r-x|
||$ chmod 4755 ||	||$ chmod a=|r,go+x,u+w,g+S  ||     |-|rwS|r-x|r-x|










||	|-|---|---|---|	 ||		||$ chmod || 0000 ||	||$ chmod || ugo-a      		||				  
||	|-|--x|--x|--x|	 ||		||$ chmod || 0111 ||	||$ chmod || a=x 				||						  
||	|-|r--|---|---|	 ||		||$ chmod || 0400 ||	||$ chmod || u=r 				||  ||$ umask 277 ||      
||	|-|r--|r--|r--|	 ||		||$ chmod || 0444 ||	||$ chmod || a=r	 			||
||	|-|r-x|---|---|	 ||		||$ chmod || 0500 ||	||$ chmod || u=rx				||
||	|-|r-x|r-x|---|	 ||		||$ chmod || 0550 ||	||$ chmod || ug=rx				||
||	|-|rw-|---|---|	 ||		||$ chmod || 0600 ||	||$ chmod || u=rw 	 		  	||  ||$ umask 077 ||
||	|-|rw-|-w-|---|	 ||		||$ chmod || 0620 ||	||$ chmod || ug=w,u+r	  		||  ||$ umask 037 ||
||	|-|rw-|r--|---|  ||		||$ chmod || 0640 ||	||$ chmod || ug=r,u+w	 		||  ||$ umask 027 ||		
||	|-|rw-|r--|r--|  ||		||$ chmod || 0644 ||	||$ chmod || a=r,u+w	  		||  ||$ umask 022 ||
||	|-|rw-|r-x|r-x|  ||		||$ chmod || 0655 ||	||$ chmod || a=r,ug+x,u+w		||
||	|-|rw-|rw-|---|  ||		||$ chmod || 0660 ||  	||$ chmod || ug=rw 		 		||
||	|-|rw-|rw-|r--|  ||		||$ chmod || 0664 ||  	||$ chmod || a=r,ug+rw    		||  ||$ umask 002 ||     
||	|-|rw-|rw-|rw-|  ||		||$ chmod || 0666 ||  	||$ chmod || a=rw	 	 		||  ||$ umask 000 ||     
||	|-|rwx|---|---|	 ||		||$ chmod || 0700 ||	||$ chmod || u+rwx,go-rwx 		||	||  |-|rwx|--x|---|  ||		||$ chmod || 0710 ||		||$ chmod  || u=rwx,g=x			|| 
||  |-|rwx|-w-|---|  ||		||$ chmod || 0720 ||	||$ chmod || u=rwx,g=w			||
||  |-|rwx|r--|---|  ||		||$ chmod || 0740 ||	||$ chmod || u=rwx,g=r			||
||  |-|rwx|r--|r--|  ||		||$ chmod || 0744 ||	||$ chmod || a=r,u+wx		   ||
||  |-|rwx|r-x|r-x|  ||		||$ chmod || 0755 ||	||$ chmod || a=rx,u+w		   ||
||  |-|rwx|rwx|r-x|  ||		||$ chmod || 0775 ||	||$ chmod || a=rwx,o-w		   ||
||  |-|rwx|rwx|rw-|  ||		||$ chmod || 0776 ||	||$ chmod || a=rwx,o-x		   ||
||  |-|rwx|rwx|rwx|  ||		||$ chmod || 0777 ||	||$ chmod || a=rwx 			   || 
||  |-|rwx|r-s|r-x|  ||		||$ chmod || 2755 ||	||$ chmod || a=r,uo+x,g+s,u+w  || 
||  |-|rwx|rws|r-x|  ||		||$ chmod || 2775 ||	||$ chmod || a=r,uo+x,g+s,ug+w || 
||  |-|r-S|-w-|---|  ||		||$ chmod || 4420 ||	||$ chmod || u=r,u+S,g+w 	   || 
||  |-|rws|r-x|r-x|  ||		||$ chmod || 4655 ||	||$ chmod || a=r,go+x,u+sw 	   || 
||  |-|rwS|r-x|r-x|  ||		||$ chmod || 4755 ||	||$ chmod || a=r,go+x,u+w,g+S 	|| 


				  ________________
				   |A|	 |	 |	 |
				   |T|	 |	 |	 |
	   			   |T| O | G | O |	
				   |R| w | r | t |
			       |I| n | o | h |
				   |B| e | u | e |
			       |U| r | p | r |
				   |T|	 |	 |	 |
___________________|E|   |   |   |______________________________
				   | |   |   |   |
|$ chmod 0000      |-|---|---|---|        			  ||$ chmod ugo-a
|$ chmod 0111      |-|--x|--x|--x|        			  ||$ chmod a=x|
|$ chmod 0400      |-|r--|---|---|  ||$ umask 277     ||$ chmod u=|r 
|$ chmod 0444      |-|r--|r--|r--|        			  ||$ chmod a=|r
|$ chmod 0500      |-|r-x|---|---|        			  ||$ chmod u=|rx| 
|$ chmod 0550      |-|r-x|r-x|---|         			  ||$ chmod ug=|rx|
|$ chmod 0600      |-|rw-|---|---|  ||$ umask 077     ||$ chmod u=|rw
|$ chmod 0620      |-|rw-|-w-|---|        			  ||$ chmod ug=w,u+|r
|$ chmod 0640      |-|rw-|r--|---|  ||$ umask 027     ||$ chmod ug=|r,u+w				umask 0037
|$ chmod 0644      |-|rw-|r--|r--|  ||$ umask 022     ||$ chmod a=|r,u+w			
|$ chmod 0655      |-|rw-|r-x|r-x|        			  ||$ chmod a=|r,ug+x||,u+w
|$ chmod 0660      |-|rw-|rw-|---|        			  ||$ chmod ug=|rw
|$ chmod 0664      |-|rw-|rw-|r--|  ||$ umask 002     
|$ chmod 0666      |-|rw-|rw-|rw-|  ||$ umask 000     
|$ chmod 0700      |-|rwx|---|---|        			  ||$ chmod u+|rwx|,go-|rwx|
|$ chmod 0710      |-|rwx|--x|---|        			  ||$ chmod u=|rwx|,g=x| 
|$ chmod 0720      |-|rwx|-w-|---|        			  ||$ chmod u=|rwx|,g=w
|$ chmod 0740      |-|rwx|r--|---|        			  ||$ chmod u=|rwx,g=|r
|$ chmod 0744      |-|rwx|r--|r--|        			  ||$ chmod a=|r,u+wx
|$ chmod 0755      |-|rwx|r-x|r-x|        			  ||$ chmod a=|rx,u+w
|$ chmod 0775      |-|rwx|rwx|r-x|        			  ||$ chmod a=|rwx,o-w
|$ chmod 0776      |-|rwx|rwx|rw-|        			  ||$ chmod a=|rwx,o-x
|$ chmod 0777      |-|rwx|rwx|rwx|        			  ||$ chmod a=|rwx
|$ chmod 2755      |-|rwx|r-s|r-x|        			  ||$ chmod a=|r,uo+x|,g+s,u+w
|$ chmod 2775      |-|rwx|rws|r-x|        			  ||$ chmod a=|r,uo+x,g+s,ug+w
|$ chmod 4420      |-|r-S|-w-|---|        			  ||$ chmod u=|r,u+S,g+w
|$ chmod 4655      |-|rws|r-x|r-x|        			  ||$ chmod a=|r,go+x,u+sw
|$ chmod 4755      |-|rwS|r-x|r-x|        			  ||$ chmod a=|r,go+x,u+w,g+S
===================| |   |   |   |===========================================
				   |A|	 |	 |	 |
				   |T|	 |	 |	 |
	   			   |T| O | G | O |	
				   |R| w | r | t |
			       |I| n | o | h |
				   |B| e | u | e |
			       |U| r | p | r |
				   |T|   |	 |	 |
				   |E|   |   |   |
	               |_|___|___|___|


					|-|rws|r-x|r-x|
					|-|rwx|r-s|r-x|
					|-|rws|r-s|r-x|


| 000 |	0666 | (rw-rw-rw-) 	  

| 002 |	0664 | (rw-rw-r--) 	  
| 022 |	0644 | (rw-r--r--) 	  
| 027 |	0640 | (rw-r-----) 	  
| 077 |	0600 | (rw-------) 	  
| 277 |	0400 | (r--------) 	  


| 000 |	0666 | (rw-rw-rw-) 	  | 0777 |	(rwxrwxrwx)	|
| 002 |	0664 | (rw-rw-r--) 	  | 0775 |	(rwxrwxr-x)	|
| 022 |	0644 | (rw-r--r--) 	  | 0755 |	(rwxr-xr-x)	|
| 027 |	0640 | (rw-r-----) 	  | 0750 |	(rwxr-x---)	|
| 077 |	0600 | (rw-------) 	  | 0700 |	(rwx------)	|
| 277 |	0400 | (r--------) 	  | 0500 |	(r-x------)	|



type / owner / group / world

|T|
|Y|
|P|
|E|
|


Type is directory (d) or file (-).
read    (r)	 4
write   (w)	 2
execute (e)	 1


|| 							||								 ||								||
||==========================||===============================||=============================||
||  File Perm Attributes:	|| User (Owner) File Permissions ||	  Group File Permissions	||
||==========================||===============================||=============================||
|| - = regular file			||								 ||								||
|| b = block device file	||	r = read					 ||	r = read					||
|| c = char device file		||	w = write 					 ||	w = write				    ||	
|| d = directory			||	x = execute 				 ||	x = execute 			    ||
|| l = symbolic link		||	s = setUID and execute 		 ||	s = setGID and execute 	    ||
|| s = Unix domain socket	||	S = setUID and not execute 	 ||	S = setGID and not execute 	||
|| p = named pipe			||								 ||								||
|| 							||								 ||								||
||==========================||===============================||=============================||
|| 							||								 ||								||
|| 							||								 ||								||
|| 							||								 ||								||




chown -R 0:0 lynis
chown 0:0 ./include/functions




U

echo -e "\t<<+}========================================={+>>"
echo -e "\t\t\t{+} Read File Permissions"
echo -e "\t<<+}========================================={+>>"
echo "\t"_______________________________"
echo -e "\t\tuser: 400  | chmod u+r"
echo -e "\t\tgroup: 40  | chmod g+r"
echo -e "\t\tothers: 4  | chmod o+r"



echo -e "\t\tuser: 200  | chmod u+w
group: 20  | chmod g+w
others: 2  | chmod o+w


________________________________
|200| |user  |   |$ chmod u+w |
|-20| |group |   |$ chmod g+w |
|--2| |others|   |$ chmod o+w |
________________________________


echo -e "\t<<+}========================================={+>>"
echo -e "\t\t\t{+} Execution File Permissions"
echo -e "\t<<+}========================================={+>>"

________________________________

echo -e "\t\t Perm  Owner       Command Execution
echo -e "\t\t |400| |user  |   |$ chmod u+x |"
echo -e "\t\t |-40| |group |   |$ chmod g+x |
echo -e "\t\t |--4| |others|   |$ chmod o+x |


echo -e "\t\t Perm     Owner   Command Execution
echo -e "\t\t |user  | |400|   |$ chmod u+x |"
echo -e "\t\t |group | |-40|   |$ chmod g+x |"
echo -e "\t\t |others| |--4|   |$ chmod o+x |"

echo -e "\t\t Perm     Owner   Command Execution
echo -e "\t\t |$ chmod u+x |   |user  | |400|"
echo -e "\t\t |$ chmod g+x |   |group | |-40|"
echo -e "\t\t |$ chmod o+x |   |others| |--4|"

echo -e "\t\tCommand Execution   Perm    _Owner__
echo -e "\t\t |$ chmod u+x |     |400|   |user  |"
echo -e "\t\t |$ chmod g+x |     |-40|   |group |"
echo -e "\t\t |$ chmod o+x |     |--4|   |others|"



________________________________

user:   |100| chmod u+x
group:  |-10| chmod g+x
others: |--1| chmod o+x
SetUID (SUID):	4000  | chmod u+s 
SetGID (SGID):	2000  | chmod g+s 
Sticky: 		1000  | chmod +t 



                     ______________
                      | |  |  |  |
                      |A|  |  |  |
				      |T|  |  |  |
                      |T|O |G |O |	
                      |R|w |r |t |
                      |I|n |o |h |
                      |B|e |u |e |
                      |U|r |p |r |
                      |T|  |  |  |
                      |E|  |  |  |
______________________| |  |  |  |___________________________
|$ chmod 0000 |______| ---------- ||$ chmod ugo-a
|$ chmod 0111 |______| ---x--x--x ||$ chmod a=x
|$ chmod 0400 |______| -r-------- ||$ chmod u=r 
|$ chmod 0444 |______| -r--r--r-- ||$ chmod a=r
|$ chmod 0500 |______| -r-x------ ||$ chmod u=rx 
|$ chmod 0550 |______| -r-xr-x--- ||$ chmod ug=rx
|$ chmod 0600 |______| -rw------- ||$ chmod u=rw
|$ chmod 0620 |______| -rw--w---- ||$ chmod ug=w,u+r
|$ chmod 0640 |______| -rw-r----- ||$ chmod ug=r,u+w				umask 0037
|$ chmod 0644 |______| -rw-r--r-- ||$ chmod a=r,u+w			
|$ chmod 0655 |______| -rw-r-xr-x ||$ chmod a=r,ug+x,u+w
|$ chmod 0660 |______| -rw-rw---- ||$ chmod ug=rw
|$ chmod 0700 |______| -rwx------ ||$ chmod u+rwx,go-rwx
|$ chmod 0710 |______| -rwx--x--- ||$ chmod u=rwx,g=x 
|$ chmod 0720 |______| -rwx-w---- ||$ chmod u=rwx,g=w
|$ chmod 0740 |______| -rwxr----- ||$ chmod u=rwx,g=r
|$ chmod 0744 |______| -rwxr--r-- ||$ chmod a=r,u+wx
|$ chmod 0755 |______| -rwxr-xr-x ||$ chmod a=rx,u+w
|$ chmod 0775 |______| -rwxrwxr-x ||$ chmod a=rwx,o-w
|$ chmod 0776 |______| -rwxrwxrw- ||$ chmod a=rwx,o-x
|$ chmod 0777 |______| -rwxrwxrwx ||$ chmod a=rwx
|$ chmod 2755 |______| -rwxr-sr-x ||$ chmod a=r,uo+x,g+s,u+w
|$ chmod 2775 |______| -rwxrwsr-x ||$ chmod a=r,uo+x,g+s,ug+w
|$ chmod 4420 |______| -r-S-w---- ||$ chmod u=r,u+S,g+w
|$ chmod 4655 |______| -rwsr-xr-x ||$ chmod a=r,go+x,u+sw
|$ chmod 4755 |______| -rwSr-xr-x ||$ chmod a=r,go+x,u+w,g+S
======================| |  |  |  |===========================================
                      |A|  |  |  |
				      |T|  |  |  |
                      |T|O |G |O |	
                      |R|w |r |t |
                      |I|n |o |h |
                      |B|e |u |e |
                      |U|r |p |r |
                      |T|  |  |  |
                      |E|  |  |  |
                      |_|__|__|__|



chmod a-w		r-xr-xr-x |


Owner types
✦ u = The user who owns it
✦ g = Other users in the file’s group
✦ o = Other users not in the file’s group
✦ a = All users

Permission actions
✦ + = Selected permissions are added to the existing permissions of each file
✦ - = Selected permissions are removed from the existing permissions of each file
✦ = = Selected permissions are assigned as the only permissions of each file

Permission types
✦ r = Read
✦ w = Write
✦ x = Execute for files or access for directories
✦ X = Execute only if the file is a directory or already has execute permission for

some user
✦ s = Sets user or group ID on execution
✦ t = Saves program text on swap device
✦ u = The permissions that the user who owns the file currently has for the file
✦ g = The permissions that other users in the file’s group have for the file
✦ o = The permissions that other users, not in the file’s group, have for the file
✦ a = All users





#####################################################
	Sample umask values and their effects
#####################################################
 Umask 	 Created files 		   Chmod  Created directories
#####################################################

||$ chmod -v 0777 ||	(rwxrwxrwx)	 ||$ chmod -v 
||$ chmod -v 0775 ||	(rwxrwxr-x)  ||$ chmod -v a=rx,ug+w
||$ chmod -v 0755 ||	(rwxr-xr-x)	 ||$ chmod -v u=rwx,g=r,a=x
||$ chmod -v 0750 ||	(rwxr-x---)  ||$ chmod -v u=rwx,g=x
0741 (rwxr----x)
||$ chmod -v 0700 ||	(rwx------)  ||$ chmod -v go+rwx


||$ chmod -v 0777 ||	(rwxrwxrwx)	 ||$ chmod -v 
||$ chmod -v 0775 ||	(rwxrwxr-x)  ||$ chmod -v 
||$ chmod -v 0755 ||	(rwxr-xr-x)	 ||$ chmod -v 
||$ chmod -v 0750 ||	(rwxr-x---)  ||$ chmod -v 
||$ chmod -v 0700 ||$ chmod -v go-rwx	  ||  (rwx------)


| chmod 0700 |______| -rwx------ |  chmod go-rwx	rwx------ |
|$ chmod -v 0500 |	(r-x------)	|


| 000 |	0666 | (rw-rw-rw-) 	  

| 002 |	0664 | (rw-rw-r--) 	  
| 022 |	0644 | (rw-r--r--) 	  
| 027 |	0640 | (rw-r-----) 	  
| 077 |	0600 | (rw-------) 	  
| 277 |	0400 | (r--------) 	  


| 000 |	0666 | (rw-rw-rw-) 	  | 0777 |	(rwxrwxrwx)	|
| 002 |	0664 | (rw-rw-r--) 	  | 0775 |	(rwxrwxr-x)	|
| 022 |	0644 | (rw-r--r--) 	  | 0755 |	(rwxr-xr-x)	|
| 027 |	0640 | (rw-r-----) 	  | 0750 |	(rwxr-x---)	|
| 077 |	0600 | (rw-------) 	  | 0700 |	(rwx------)	|
| 277 |	0400 | (r--------) 	  | 0500 |	(r-x------)	|

#####################################################



  =======================================================
//	Mode 		   	Number Description					\\
===========================================================
||__________||___________________________________||_____
||	0400 	|| Allows the owner to read			 ||
||__________||___________________________________||_____
||	0200 	|| Allows the owner to writ			 ||
||__________||___________________________________||_____
||	0100 	|| Allows owner X & search in dir 	 ||
||__________||___________________________________||_____
||	0040 	|| Allows group members to read		 ||
||__________||___________________________________||_____
||	0020 	|| Allows group members to write	 ||
||__________||___________________________________||_____
||	0010 	|| Allows group mem can X & search   ||
||			||  >> through dir					 ||
||__________||___________________________________||_____
||	0004 	|| Allows anyone / world to read	 ||
||__________||___________________________________||_____
||	0002 	|| Allows anyone / world to write	 ||
||__________||___________________________________||_____
||	0001 	|| Allows Anyone to X & search in dir||
||__________||___________________________________||_____
||	1000 	|| Sets the sticky bit				 ||
||__________||___________________________________||_____
||	2000 	|| Sets the setgid bit				 ||
||__________||___________________________________||_____
||	4000 	|| Sets the setuid bit				 ||
==========================================================










mount -o acl /dev/sdc1 /var/





chgrp -c || --changes		## like verbose but report only when a change is made
chgrp -f || --silent --quiet		## suppress most error messages
chgrp -v || --verbose		## output a diagnostic for every file processed
chgrp -R || --recursive		## operate on files and directories recursively
chgrp -h || --no-dereference		## affect symbolic links instead of any referenced file (useful only on systems that can change the ownership of a symlink)
chgrp --dereference			## affect the referent of each symbolic link (this is the default), rather than the symbolic link itself
chgrp --no-preserve-root	## do not treat '/' specially (the default)
chgrp --preserve-root		## fail to operate recursively on '/'
chgrp --reference=RFILE		## use RFILE's group rather than specifying a GROUP value



























ulimit -S      use the `soft' resource limit 
ulimit -H      use the `hard' resource limit 
ulimit -a      all current limits are reported 
ulimit -c      the maximum size of core files created 
ulimit -d      the maximum size of a process's data segment 
ulimit -f      the maximum size of files created by the shell 
ulimit -l      the maximum size a process may lock into memory 
ulimit -m      the maximum resident set size 
ulimit -n      the maximum number of open file descriptors 
ulimit -p      the pipe buffer size 
ulimit -s      the maximum stack size 
ulimit -t      the maximum amount of cpu time in seconds 
ulimit -u      the maximum number of user processes 
ulimit -v      the size of virtual memory 


ulimit -Sc		soft resource limit the maximum size of core files created 

ulimit -Sc 0	no core dumps
ulimit -u		total user processes



/etc/yp.conf			# NIS binding config





echo "grabbing the screen resolution..."
xdpyinfo | awk '/dimensions:/ {print $2}'			# "width x height"
echo ""
xrandr -q				# 




|| xf86config ||   Generate an XF86Config file
|| xf86cfg 	  ||	Graphical configuration tool for XFree86 4.0
|| x86info ||	Displays diagnostic info for CPU cache configuration, and CPU speedtest 


______________________________________________________________________________________
|| XFree86 ||	uses a configuration file called XF86Config for its initial setup. ||
=====================================================================================


________________________________________________________________________
|| xdm ||	Runs XDMCP (X Display Manager Control Protocol)			||
||	   ||	--> registers login sessions to the system utmp file 	||
========================================================================



________________________________________________________________________________________
 || >> XFree86 - An interface that communicates between video cards,  				|| 
 ||  -->> displays, and the graphical desktop; provides windowing infrastructure 	||
 ||  -->> and an interface for programming graphical applications.					||
=======================================================================================

_______________________________________________________________________
 || >> 		|| 
 ||  -->> 	||
=======================================================================

_______________________________________________________________________
 || >> 		|| 
 ||  -->> 	||
 ||  -->> 	||
 ||  -->> 	||
=======================================================================

||  ||	
||  ||	
||  ||	


______________________________________________________________________________
 || >> xfsprogs - XFS is a high performance journaling filesystem which    || 
 ||  -->> originated n the SGI IRIX platform extended attributes, variable ||
 ||  -->>  block sizes, is extent based, makes extensive use of Btrees (Dir||
 ||  -->> extents, free space) to aid both performance and scalability.	   ||
===============================================================================

 

=======================================================================

_______________________________________________________________________
 || >> 		|| 
 ||  -->> 	||
 ||  -->> 	||
 ||  -->> 	||
=======================================================================

_______________________________________________________________________
 || >> 		|| 
 ||  -->> 	||
=======================================================================

_______________________________________________________________________
 || >> 		|| 
 ||  -->> 	||
 ||  -->> 	||
 ||  -->> 	||
=======================================================================

 
___________________________________________________
|| xdpyinfo ||	display information utility for X
===================================================




||  ||	
___________________________________________________________
|| xhost 	||		server access control program for X ||
===========================================================

_____________________________________________________________________
|| xinitrc 	||	script which is used to configure your X Window
||			||	-->> System session or to start a window manager
=====================================================================

_____________________________________________________________________
||  ||	
=====================================================================
_____________________________________________________________________
||  ||	
=====================================================================
_____________________________________________________________________
||  ||	
=====================================================================
_____________________________________________________________________
||  ||	
=====================================================================
_____________________________________________________________________
||  ||	
=====================================================================
_____________________________________________________________________
||  ||	
=====================================================================
_____________________________________________________________________
||  ||	
=====================================================================
_____________________________________________________________________
||  ||	
=====================================================================
_____________________________________________________________________
||  ||	
=====================================================================
_____________________________________________________________________
||  ||	
=====================================================================




##############################################################################################################################



###############################################################
echo "Convert a Nero .nrg file to .iso"
dd bs=1k if=imagefile.nrg of=imagefile.iso skip=300

###############################################################
echo "Convert a bin/cue image to .iso"
bchunk imagefile.bin imagefile.cue imagefile.iso

###############################################################
growisofs ‐dvd‐compat ‐Z /dev/dvd=imagefile.iso     # Burn existing iso image 
growisofs ‐dvd‐compat ‐Z /dev/dvd ‐J ‐R /p/to/data  # Burn directly
###############################################################

###############################################################
echo "Create and burn an ISO image"
dd if=/dev/hdc of=/tmp/mycd.iso bs=2048 conv=notrunc
mkisofs ‐J ‐L ‐r ‐V TITLE ‐o imagefile.iso /path/to/dir 		# Use mkisofs to create a CD/DVD image from files in a directory.

###############################################################
echo "create an ISO image is to use dd:"
dd if=/dev/cdrom of=image.iso

###############################################################
echo "create an ISO image from /dev/cdrom, use the following command:"
cat /dev/cdrom > image.iso

###############################################################
echo "write the ISO to a USB storage device, use the following command:"
###############################################################
dd if=image.iso of=/dev/sdb1

###############################################################
echo "burn the image to the CD-ROM as follows"
###############################################################
cdrecord -v dev=/dev/cdrom image.iso

cdrecord -v dev=/dev/cdrom image.iso -speed 8
cdrecord -v dev=/dev/cdrom image.iso -multi


##############################################################################################################################
##############################################################################################################################















port 1024		# lowest privilged port





Raid Levels:
0	# Stripe
1	# Mirror
5	# stripe with parity distributed over multiple disks (3 disk minimum)




/etc/apt/trusted.gpg.d/
/usr/share/keyrings/debian-archive-keyring.gpg
/usr/share/keyrings/debian-archive-removed-keys.gpg



~/.gnupg/pubring.gpg                 # Contains your public keys and all others imported 
~/.gnupg/secring.gpg                 # Can contain more than one private key 






gpg ‐e ‐r 'Your Name' file                  # Encrypt with your public key 
gpg ‐o file ‐d file.gpg                     # Decrypt. Use ‐o or it goes to stdout

gpg ‐a ‐o alicekey.asc ‐‐export 'Alice'				# Alice exported her key in ascii file. 
gpg ‐‐send‐keys ‐‐keyserver subkeys.pgp.net KEYID	# Alice put her key on a server. 
gpg ‐‐import alicekey.asc                  			 # You import her key into your pubring. 
gpg ‐‐search‐keys ‐‐keyserver subkeys.pgp.net 'Alice' # or get her key from a server. 

gpg ‐e ‐r 'Alice' file			# Encrypt the file for Alice. 
gpg ‐d file.gpg ‐o file			# Decrypt a file encrypted by Alice for you. 


gpg ‐‐list‐keys                             # list public keys and see the KEYIDS 
gpg ‐‐gen‐revoke 'Your Name'                # generate revocation certificate 
gpg ‐‐list‐secret‐keys                      # list private keys 
gpg ‐‐delete‐keys NAME                      # delete a public key from local key ring 
gpg ‐‐delete‐secret‐key NAME                # delete a secret key from local key ring 
gpg ‐‐fingerprint KEYID                     # Show the fingerprint of the key 











/etc/printcap			Printer description file		
/var/spool/*			Spool directories			
/var/spool/*/minfree	Minimum free space to leave
/dev/lp*				Line printer devices
/dev/printer			Socket for local requests
/etc/hosts.equiv		Lists machine names allowed printer access
/etc/hosts.lpd			Lists machine names allowed printer access but not under same administrative control









Printing with lpr

lpr unixtoolbox.ps                 # Print on default printer 
export PRINTER=hp4600              # Change the default printer 
lpr ‐Php4500 #2 unixtoolbox.ps     # Use printer hp4500 and print 2 copies 
lpr ‐o Duplex=DuplexNoTumble ...   # Print duplex along the long side 
lpr ‐o PageSize=A4,Duplex=DuplexNoTumble ... 



lpq                                # Check the queue on default printer 
lpq ‐l ‐Php4500                    # Queue on printer hp4500 with verbose 
lprm ‐                             # Remove all users jobs on default printer 
lprm ‐Php4500 3186                 # Remove job 3186. Find job nbr with lpq 
lpc status                         # List all available printers 
lpc status hp4500                  # Check if printer is online and queue length


lpadm –d myprint
lpadm –x myprint -d option set default printer
-x option delete a installed printer.

lpinfo –v List supported printing protocols lp –d myprint filename
lpr –P myprint filename Print a file

# lpstat -p printer

http://localhost:631

/etc/cups/printers.conf
/etc/cups/classes.conf
/etc/cups/cupsd.conf CUPS related configuration files

/etc/cups
/usr/lib/cups
/usr/share/cups CUPS related directories


/etc/printcap
/etc/printcap.local Printer capabilities data base.


cat log_file | mail -s "subject" recipient
mail -s "subject" recipient < log_file


lpr -# 5 io.ps









file=$1                                      # Assign the filename 
fname=${file%.*}                             # Get the name of the file only
fext=${file#*.}                              # Get the extension of the file 

${var:=value}
assign default value if not defined
${var:+value}
substitute value if var is non-null
${var:-value}
temporarily assign value if non-null
${var:?value}
issue error with value if var not set,
otherwise substitute value









                               XXXXXXXXXXXXXXXXXX
                             XXX     Network    XXX
                               XXXXXXXXXXXXXXXXXX
                                       +
                                       |
                                       v
 +-------------+              +------------------+
 |table: filter| <---+        | table: nat       |
 |chain: INPUT |     |        | chain: PREROUTING|
 +-----+-------+     |        +--------+---------+
       |             |                 |
       v             |                 v
 [local process]     |           ****************          +--------------+
       |             +---------+ Routing decision +------> |table: filter |
       v                         ****************          |chain: FORWARD|
****************                                           +------+-------+
Routing decision                                                  |
****************                                                  |
       |                                                          |
       v                        ****************                  |
+-------------+       +------>  Routing decision  <---------------+
|table: nat   |       |         ****************
|chain: OUTPUT|       |               +
+-----+-------+       |               |
      |               |               v
      v               |      +-------------------+
+--------------+      |      | table: nat        |
|table: filter | +----+      | chain: POSTROUTING|
|chain: OUTPUT |             +--------+----------+
+--------------+                      |
                                      v
                               XXXXXXXXXXXXXXXXXX
                             XXX    Network     XXX
                               XXXXXXXXXXXXXXXXXX



configuration uses the bridge as a firewall with network address translation (NAT) that protects a server and internal
LAN clients

Internet ---- router ( 62.3.3.25 ) ---- bridge (62.3.3.26 gw 62.3.3.25 / 192.168.0.1)
										  |
										  |
										  |---- WWW Server (62.3.3.27 gw 62.3.3.25)
										  |
										  |
										 LAN --- Zipowz (192.168.0.2 gw 192.168.0.1)



# Create the interface br0
/usr/sbin/brctl addbr br0
# Add the Ethernet interface to use with the bridge
/usr/sbin/brctl addif br0 eth0
/usr/sbin/brctl addif br0 eth1
# Start up the Ethernet interface

/sbin/ifconfig eth0 0.0.0.0
/sbin/ifconfig eth1 0.0.0.0
# Configure the bridge ethernet
# The bridge will be correct and invisible ( transparent firewall ).
# It's hidden in a traceroute and you keep your real gateway on the
# other computers. Now if you want you can config a gateway on your
# bridge and choose it as your new gateway for the other computers.
/sbin/ifconfig br0 62.3.3.26 netmask 255.255.255.248 broadcast 62.3.3.31
# I have added this internal IP to create my NAT
ip addr add 192.168.0.1/24 dev br0
/sbin/route add default gw 62.3.3.25















A bridge providing firewall capabilities




Internet ---- router (62.3.3.25) ---- bridge (62.3.3.26)
										|
										|
										|---- WWW Server (62.3.3.28 gw 62.3.3.25)
										|
										|
										|---- Mail Server (62.3.3.27 gw 62.3.3.25)



# Create the interface br0
/usr/sbin/brctl addbr br0
# Add the Ethernet interface to use with the bridge
/usr/sbin/brctl addif br0 eth0
/usr/sbin/brctl addif br0 eth1
# Start up the Ethernet interface
/sbin/ifconfig eth0 0.0.0.0
/sbin/ifconfig eth1 0.0.0.0
# Configure the bridge Ethernet
# The bridge will be correct and invisible ( transparent firewall ).
# It's hidden in a traceroute and you keep your real gateway on the
# other computers. Now if you want you can config a gateway on your
# bridge and choose it as your new gateway for the other computers.
/sbin/ifconfig br0 62.3.3.26 netmask 255.255.255.248 broadcast 62.3.3.31













iptables -F FORWARD
iptables -P FORWARD DROP
iptables -A FORWARD -s 0.0.0.0/0.0.0.0 -d 0.0.0.0/0.0.0.0 -m state --state INVALID -j DROP
iptables -A FORWARD -m state --state ESTABLISHED,RELATED -j ACCEPT

# Some funny rules but not in a classic Iptables sorry ...
# Limit ICMP
# iptables -A FORWARD -p icmp -m limit --limit 4/s -j ACCEPT
# Match string, a good simple method to block some VIRUS very quickly
# iptables -I FORWARD -j DROP -p tcp -s 0.0.0.0/0 -m string --string "cmd.exe"
# Block all MySQL connection just to be sure
iptables -A FORWARD -p tcp -s 0/0 -d 62.3.3.0/24 --dport 3306 -j DROP
# Linux Mail Server Rules
# Allow FTP-DATA (20), FTP (21), SSH (22)
iptables -A FORWARD -p tcp -s 0.0.0.0/0 -d 62.3.3.27/32 --dport 20:22 -j ACCEPT
# Allow the Mail Server to connect to the outside
# Note: This is *not* needed for the previous connections
# (remember: stateful filtering) and could be removed.
iptables -A FORWARD -p tcp -s 62.3.3.27/32 -d 0/0 -j ACCEPT
# WWW Server Rules
# Allow HTTP ( 80 ) connections with the WWW server
iptables -A FORWARD -p tcp -s 0.0.0.0/0 -d 62.3.3.28/32 --dport 80 -j ACCEPT
# Allow HTTPS ( 443 ) connections with the WWW server
iptables -A FORWARD -p tcp -s 0.0.0.0/0 -d 62.3.3.28/32 --dport 443 -j ACCEPT
# Allow the WWW server to go out
# Note: This is *not* needed for the previous connections
# (remember: stateful filtering) and could be removed.
iptables -A FORWARD -p tcp -s 62.3.3.28/32 -d 0/0 -j ACCEPT











Print routing table
route ‐n                  # Linux or use "ip route" 
netstat ‐nr               # Linux, BSD and UNIX 
netstat --tcp -anp | grep ":143"
netstat -s


ethtool eth0              # Show the ethernet status (replaces mii‐diag) 
ethtool ‐s eth0 speed 100 duplex full # Force 100Mbit Full duplex 
ethtool ‐s eth0 autoneg off # Disable auto negotiation 
ethtool ‐p eth1           # Blink the ethernet led ‐ very useful when supported 
ip link show              # Display all interfaces on Linux (similar to ifconfig) 
ip link set eth0 up       # Bring device up (or down). Same as "ifconfig eth0 up" 
ip addr show              # Display all IP addresses on Linux (similar to ifconfig) 
ip neigh show             # Similar to arp ‐a 



grep SYN /var/log/messages | tail -n 1
What is the highest numbered TCP /IP port?
65535







getent  displays entries from databases supported by the Name Service Switch libraries, 
		which are configured in /etc/nsswitch.conf













## ============================================================================= ##
tr -d '\r' < DosFile > UnixFile		# convert Dos to Unix
cat file | tr -s '[:blank]'			# delete all spaces in the file
tr '^M' '\n' < macfile.txt			# Remove  ^M  mac newline and replace with unix new line. To get a  ^M  use CTL­V then CTL­M
cat tmp | tr ';' '\n'				# Replace semicolon with a new line
cat file | tr a-z A-Z				# convert lowercase characters to uppercase
cat file | tr '[:lower]' '[:upper]'
tr -d 0-9 <myfile
tr -d [:digit:] <myfile
tr -cs '[:alnum:]' '[\n*]'	## Put all words on lines by themselves.  This converts all 
## ================================================================================= ##

tr '[A−Z]' '[a−z]' < fileName.txt > fileNameNew.txt
tr abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
cat fileName.txt | tr '[A−Z]' '[a−z]' > newFileName.txt		# convert uppercase to lowercase using the the file "fileName.txt"
## =================================================================================== ##


########################### ## non-alphanumeric characters to newlines
tr -cs A-Za-z0-9 '\012'		## the octal code for newline is 012
tr -d '\0'		## Remove all zero bytes:
tr -s '\n'		## Convert each sequence of repeated newlines to a single newline (elete blank lines)
tr -d axM		## remove all ‘a’s, ‘x’s, and ‘M’s

cat some_file | tr '3' '5' > new_file			## replace all the instances of 3 with 5
cat some_file | tr '[A−Z]' '[a−z]' > new_file	## This will run cat on some_file and convert 
############################################### ## any capital letters to lowercase letters

tr −d '\r' < inputFile.txt > outputFile.txt		## Delete carriage returns it finds, making the file a UNIX system text file.

tr '[A-Z]' '[a-z]'		## Change to lower case

cat file1 | tr -s '[:blank:]'			## suppress repeated whitespace characters from file1:
cat file1 | tr -dc '[:print:]\n'		## remove all non-printable characters from file1 (except the newline character):


























				 ______________________
				< Enter The Linux Void >
				 ----------------------
				  \                 __ 
				   \               (oo)
				    \              (  )
					 \             /--\
				       __         / \  \ 
				      UooU\.'@@@@@@`.\  )
				      \__/(@@@@@@@@@@) /
				           (@@@@@@@@)(( 
				           `YY~~~~YY' \\
				            ||    ||   >> 

				

===============================================================================================
=============================


The global offset table (GOT) stores the runtime address of symbols that cannot be com-
puted at link time. These symbols are often stored within shared libraries that can be
loaded anywhere within the process’ address space.

The procedure linkage table (PLT) supports calling functions within shared libraries.
•    tasks: The process’ reference into the linked list of active processes.
•    mm: Stores memory management data. In particular, the DTB value (physical offset
of the process’ directory table base) can be found at mm->pgd. This value is used to
read from the address space of the process. It also holds references to important
portions of process address space such as the stack, heap, code, and data. For kernel
threads, this value is NULL.
•    parent: A reference to the process that spawned the current one. If a process’ par-
ent exits, the child is inherited by init.
•    children: Holds the list of processes spawned by the current one.
•    cred: Stores the credential information for the process. On some kernel versions,
it includes the user ID (UID) and group ID (GID), whereas on others the user and
group values are direct members of task_struct.
•    comm: The name of the process is a 16-byte character array that stores the name
of the executable or kernel thread. For a kernel thread, if its name ends with a
forward slash followed by a number, the number indicates the CPU where the
thread is executed.
•    start_time: The time the process was created.

•    mmap and mm_rb: These members store the individual process memory mappings
as a linked list and red-black tree, respectively.
•    pgd: The address of the process’ DTB. This is the member that populates the DTB
column of linux_pslist and enables access to the process’ address space.
•    owner: A back pointer to the task_struct that owns this mm_struct. On the kernels
in which this member is enabled and the SLAB allocator is in use, it can serve as
an alternative source of process listings because mm_struct structures are tracked
by the cache.
•    start_code and end_code: Pointers to the beginning and end of the process’ execut-
able code.
and end_data: Pointers to the beginning and end of the process’ data.
•
•    start_brk and brk: Pointers to the beginning and end of the process’ heap.
•    start_stack: A pointer to the beginning of the process’ stack. No pointer is kept
start_data
to the end of the stack because it will fluctuate on every function call.
•    arg_start and arg_end: Pointers to the beginning and end of the command-line
arguments.
•    env_start and env_end: Pointers to the beginning and end of the process’ environ-
ment variables.
•    vm_start and vm_end: The starting and ending virtual address of the region within
the process’ address space.
•    vm_next and vm_prev: Forward and back pointers inside the list of vm_area_struct
structures for a process.
•    vm_flags: Indicates whether the region was mapped readable, writable, and/or
executable.
•    vm_pgoff: The offset into the file that the region maps.
•    vm_file: A pointer to the file structure of the file the region maps (or NULL if it
is a memory-backed region).
•    mmap, is a linked list of vm_area_struct structures (one structure for each mapping).
•    mm_rb, which stores the same vm_area_struct structures, but in a red-black tree, so that
the kernel can quickly find mappings during page faults or when a new memory range
needs to be allocated.

•    f_path: Holds a reference to the information needed to reconstruct the name and
path of the file.
•    f_mode: Tells you whether the file was opened for read, write, and/or execute
access.
•    f_pos: The position where the next read or write will occur.
•    f_mapping: A reference to the address_space structure of the file that stores pointers
into the page cache. The page cache holds the file’s contents on disk.
•    f_op: This member identifies a set of file operation pointers for the file descriptor.
These operations (functions) are called when a process reads, writes, and seeks,
and so on. Later in the book, you will learn how rootkits hook these operations to
hide files on live machines.


•    linux_threads: Each process has one or more threads that execute distinct units of
code. This plugin identifies the threads by their thread ID and provides the base
functionality for the following plugins.
•    linux_info_regs: During a context switch, the current process state is saved to the
kernel stack. Volatility can recover this state to determine previous process activity.
•    linux_process_syscall: Context switches are often triggered when a thread makes
a system call. You can determine which system call the application was making
and the parameters sent to the handler.
•    linux_process_stack: Stack frames contain return addresses, local variables, and
function parameters. This plugin recovers stack frames and attempts to determine
the symbolic name of the function represented by each frame.


•    sk: The embedded sock structure
•    pinet6: Contains the source and destination address of IPv6 connections
•    inet_dport: The destination port
•    inet_sport: The source port
•    inet_saddr: The source IP address
•    inet_num: The protocol number (TCP, UDP, ICMP)


•    skc_daddr: The destination address of the connection
•    skc_rcv_saddr: The source address of the connection
•    skc_family: The address family. TCP and UDP connections are in the AF_INET
address family.
•    skc_state: The protocol state that Volatility uses to determine the state of TCP con-
nections. You determine the state by replicating the enumeration defined within
the include/net/tcp_states.h Linux source file.


•    Proto: The field is populated from inet_sock.sk.sk_protocol , as discussed
previously.
•    Source IP: The field is populated from skc_rcv_saddr of sock_common.
•    Source Port: Depending on the kernel version, this is populated from sport or
inet_sport of the inet_sock structure or skc_port of sock_common.
•    Destination IP: The field is populated from skc_daddr of sock_common.
•    Destination Port: Depending on the kernel version, this is populated from dport
or inet_dport of the inet_sock structure.
•    State: The field is populated from skc_state of sock_common.
•    Process/PID: Because the plugin works on a per-process basis, this information is
simply gathered from the process’ task_struct.


•    next: A reference to the next packet (sk_buff) of the connection
•    len: The length of the packet’s contents
•    head: A reference to the beginning of the packet’s protocol headers
•    data: A reference to the packet’s protocol data


•    dev_list : A pointer into the list of network devices in a particular network
namespace. In older kernels without namespace support, a global list is stored
within the dev_base global variable.
•    perm_addr: The MAC address of the interface.
•    flags: Holds status information on the device. If the device is in promiscuous mode,
the flags member will have its IFF_PROMISC (0x100) bit set.






A process’ file descriptors are stored within kernel memory. Each process has a dedi-
cated table with an array of indexes, in which each index is the file descriptor number,
and the corresponding value is a pointer to the file structure instance. A NULL pointer
means that the file descriptor is not in use.





Program Headers:

############################################################################################
| The operating system uses program headers to map the file and its sections into memory    |
| at runtime. The e_phoff member of the ELF header tells you where the program header       |
| entries begin. At this offset is an Elf32_Phdr or Elf64_Phdr structure.                   |
############################################################################################
| •  p_type:        | Describes the type of the segment. Segments are portions of the       |
|                   | file that load into memory, and they contain one or more sections     |
|                   | of the file. The most common types are PT_LOAD, which describes a     |
|                   | segment that must load into memory; PT_DYNAMIC, which describes the   |
|                   | dynamic linking information; and PT_INTERP, which holds the full path |
|                   | to the program interpreter.                                           |
############################################################################################
| • p_vaddr &       | Serve the same purpose as sh_addr and sh_offset within                |
|   p_offset:       | the section headers and have the same semantics.                      |
############################################################################################
| •  p_filesz:      | Holds the size of the segment on disk.                                |
############################################################################################
| •  p_memsz:       | Holds the size of the segment in memory. p_memsz and p_filesz         |
|                   | differ in cases such as the mapping of the .bss, which occupies       |
|                   | space in memory, but not in the file. Such sections are of type       |
|                   | SHT_NOBITS.                                                           |
############################################################################################










#####################
Common ELF Sections:
#####################
#####################################################################################
||<•> Section Name     <|> Description                                            ||
#####################################################################################
|-->|| .text            | Contains the application’s executable code      |
############################################################################
|-->|| .data            | Contains the read/write data (variables)        |
############################################################################
|-->|| .rdata           | Contains read-only data                         |
############################################################################
|-->|| .bss             | Contains variables that are initialized to zero |
############################################################################
|-->|| .got             | Contains the global offset table                |
############################################################################




#############################################################################################
| The operating system uses program headers to map the file and its sections into memory    |
| at runtime. The e_phoff member of the ELF header tells you where the program header       |
| entries begin. At this offset is an Elf32_Phdr or Elf64_Phdr structure.                   |
#############################################################################################

Common Section Types:
#############################################################################################
|<•> Section Type      <|> Description                                                      |
#############################################################################################
| •  PROGBITS:          | Sections whose contents from disk will be loaded                  |
|                       | into memory upon execution.                                       |
#############################################################################################
| • NOBITS              | Sections that do not have data in the file, but have regions      |
|                       | allocated in memory. The .bss is typically a NOBITS section       |
|                       | because all its memory is initialized to zero upon execution      |
|                       | (and there is no need to store zeroes within the file).           |
#############################################################################################
| • STRTAB              | Holds a string table of the application.                          |
#############################################################################################
| • DYNAMIC             | Indicates that this is a dynamically linked application           |
|                       | and holds the dynamic information.                                |
#############################################################################################
| • HASH                | Contains the hash table of the application’s symbols.             |
#############################################################################################









