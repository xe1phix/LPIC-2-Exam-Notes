202
----------------------------------------------------------------------------------------------------------------------------
Considering the following excerpt from the httpd.conf file, select the correct answer below:
<Location> 
    AllowOverride
    AuthConfig
    Indexes
</Location>

**The excerpt is incorrect, because AllowOverride cannot be used inside a Location 
section**

Which of the following lines in the Apache configuration file would allow only clients with a
valid certificate to access the website?

**SSLVerifyClient require**



Using vsftpd (and some other ftp servers) what is the option in the configuration file to allow anonymous ftp? Include the parameter and value.

**anonymous_enable=yes** (without whitespaces)


Fill in the blank with the options that would be used with the host command to view the mail entries for penguintutor.com.

**host -t MX penguintutor.com**


What format is used for the sendmail /etc/aliases file? Select the most appropriate answer.

**alias: user**


Which of the following programs is required for a computer to act as a DHCP client?

**dhclient**


When configuring DNS what option can be configured on the master server, so that the slave servers are informed when an update is made to a zone file?

**notify**


Which of the following are tools able to query an LDAP database. Select 3 answers.

**ldapsearch**
**slapcat**
**slurpd**


What is the name of the file used to hold the DHCP lease on a DHCP Server? Enter the filename, without any path.

**dhcp.leases**


Which of the following daemons is not normally involved in NFS?

**rpc.tcpd**


What is the name of the daemon used to interface tcp/ip connections to the appropriate RPC calls? Just provide the named of the daemon, no options or path information.

**portmap** or **portmapper**


Which of the following is a command to see what clients have mounted partitions off the local server using nfs?

**showmount**


Which of the following is not one of the PAM module-types.

**login**


In the DNS configuration file, what does the channel option do?

**define where logs go**


Enter a line for the squid.conf file which would create an access control list called "internal" for the IP network range 192.168.1.0 with a network mask of 255.255.255.0. This is to be used as a source address range.

**acl internal src 192.168.1.0/24**


Enter a line for the squid.cfg file which would all access for the access control list "internal"

**http_access allow internal**


What port is normally used by POP3 (PostOffice Protocol Version 3)?

**110**


What command is used to reload the /etc/inittab file after it has been updated? Choose the most appropriate answer:

**/sbin/init q**


Write an entry for dhcpd.conf to give the dns server 192.168.1.2 and 192.168.3.3.

**option domain-name-servers 192.168.1.2,192.168.3.3;**


ll in the blank with the options that would be used with the dig command to view the DNS servers (and their addresses) for penguintutor.com. The command should query specifically the DNS servers, not display all / transfer all entries.

**dig -t NS penguintutor.com** or **dig NS penguintutor.com**


What is the name of the file used to configure the openssh server?

**/etc/ssh/sshd_config**


By default what tcp port is used by the squid proxy server?

**3128**


When configuring a DHCP server what is the option used to ensure a certain machine is always given the same address?

**fixed-address**


What is the name of the command normally used to control the Apache web server and can also query the status?
Enter the command name only.
This is normally, but not always available.

**apachectl** or **apache2ctl**


What protocol(s) are supported by TCP wrappers?

**tcp and udp**


Enter a single line entry for a dns zone that will allow the server 1.2.3.4 to transfer that zone. The rest of the zone file is:

zone mydomain.com {
  type master;
  file "primary/mydomain.com";
  
};

**allow-transfer {1.2.3.4;};**


Select the TWO correct statements about the following excerpt from httpd.conf: 
<Directory /var/web/dir1>
    <Files private.html> 
        Order allow, deny Deny from all
    </Files>
</Directory>

**The configuration will deny access to /var/web/dir1/private.html, /var/web/dirl/subdir2/private.html, /var/web/dirl/subdir3/private.html and any other instance of private.html found under the /var/web/dir1/directory.**
**The configuration will allow access to /var/web/private.html, if it exists**


The new file server is a member of the Windows domain “foo”. Which TWO of the following configuration sections will allow members of the domain group “all” to read, write and execute files in “/srv/smb/data”?

**[data] comment = data share path = /srv/smb/data write list = @foo+all force group = @foo+all create mask = 0770 directory mask = 0770**
**[data] path = /srv/smb/data write list = @foo+all force group = @foo+all create mask = 0770 directory mask = 0770**


During which stage of the boot process would this message be seen? Ide0: BM-DMA at 0xff00-0xff07, BIOS settings: hda:DMA, hdb:DMA

**Hardware initialization and setup**


During which stage of the boot process would this message be seen? ide_setup:hdc=ide-scsi

**Kernel loading**


All machines outside the network are able to send emails through the server to addresses not served by that server. If the server accepts and delivers the email, then it is a(n) ---------------.

**open email relay**


What is the name of the dovecot configuration variable that specifies the location of user mail?

**mail_location**


What does the following procmail configuration section do? :0fw * < 256000 | /usr/bin/foo

**If the email smaller than 256000 Bytes, procmail will process it with the program foo**


You suspect that you are receiving messages with a forged From: address. What could help you find out where the mail is originating?

**Look in the Received: and Message-ID: parts of the mail header**


Which environment variables are used by ssh-agent? (Please select TWO variables)

**SSH_AGENT_ID**
**SSH_AUTH_SOCK**


Which files are read by the lsdev command? (Please specify THREE answers)

**/proc/dma**
**/proc/interrupts**
**/proc/ioports**


Which of the following options can be passed to a DHCP client machine using configuration options on the DHCP server?

**The NIS domain name**



Postfix daemons can be chroot’d by setting the chroot flag in -------------. (Supply only the filename, without a path)

**master.cf**


Which Squid configuration directive defines the authentication method to use?

**auth_param**


Which entry in the .procmailrc file will send a copy of an email to another mail address?

**:0 c**


What is the default location for sendmail configuration files? (Please provide the complete path to the directory)

**/etc/mail**


In which directory can all parameters available to sysctl be found? (Provide the full path)

**/proc/sys**


Instead of running the command echo 1 >/proc/sys/net/ipv4/ip_forward, the configuration setting is going to be added to /etc/sysctl.conf. What is the missing value in the configuration line below? (Please specify only the missing value)

**bet.ipv4.ip_forward**


Which of the following sentences is true about ISC DHCP?

**It can be configured to only assign addresses to known clients.**


The host, called ” Certkiller “, with the MAC address “08:00:2b:4c:59:23”, should always be given the IP address of 192.168.1.2 by the DHCP server. Which of the following configurations will achieve this?

**host Certkiller { hardware ethernet 08:00:2b:4c:59:23; fixed-address 192.168.1.2; }**


DNSSEC is used for?

**Cryptographic authentication of DNS zones.**


To securely use dynamic DNS updates, the use of TSIG is recommended. Which TWO statements about TSIG are true?

**TSIG is used only in server configuration**
**Servers using TSIG must be in sync (time zone!)**


There is a restricted area in an Apache site, which requires users to authenticate against the file /srv/ www/security/site-passwd. Which command is used to CHANGE the password of existing users, without losing data, when Basic authentication is being used.


A web server is expected to handle approximately 200 simultaneous requests during normal
use with an occasional spike in activity and is performing slowly. Which directives in
httpd.conf need to be adjusted?

**MinSpareServers, MaxSpareServers, StartServers & MaxClients.**


When Apache is configured to use name-based virtual hosts:

**it’s also necessary to create a VirtualHost block for the main host.**


Which ACL type in Squid’s configuration file is used for authentication purposes?

**proxy_auth**


In the file /var/squid/url_blacklist is a list of URLs that users should not be allowed to access. What is the correct entry in Squid’s configuration file to create an acl named blacklist based on this file?

**acl blacklist urlpath_regex “/var/squid/url_blacklist”**


Users in the acl named ‘sales_net’ must only be allowed to access to the Internet at times specified in the time_acl named ‘sales_time’. Which is the correct http_access directive, to configure this?

**http_access allow sales_net sales_time**


What of the following is NOT a valid ACL type, when configuring squid?

**source**


The command ------------- -x foo will delete the user foo from the Samba database. (Specify the command only, no path information.)

**smbpasswd**


The Internet gateway connects the clients with the Internet by using a Squid proxy. Only the clients from the network 192.168.1.0/24 should be able to use the proxy. Which of the following configuration sections is correct?

**acl local src 192.168.1.0/24 http_access allow local**


The following is an excerpt from a procmail configuration file: :0 c * ! ^To: backup ! backup Which of the following is correct?

**A copy of all mails will be send to the local email address backup.**


What postfix configuration setting defines the domains for which Postfix will deliver mail locally? (Please provide only the configuration setting name with no other information)

**mydomain**


Which file can be used to make sure that procmail is used to filter a user’s incoming email?

**${HOME}/.forward**


A user is on holiday for two weeks. Anyone sending an email to that account should receive an autoresponse. Which of the following procmail rules should be used, so that all incoming emails are processed by vacation?

**:0c: | /usr/bin/vacation nobody**


Which of the following defines the maximum allowed article size in the configuration file for INN?

**maxartsize**


Which Samba-related command will show all options that were not modified using smb.conf and thus are set to their default values? Please enter the command and its parameter(s):

**testparm -v**


You are not sure whether the kernel has detected a piece of hardware in your machine. What command, without options or parameters, should be run to present the contents of the kernel ringbuffer?

**dmesg**


Which site-specific configuration file for the shadow login suite must be modified to log login failures? Please enter the complete path to that file.

**/etc/login.defs**


What command can be used to add a new newsgroup called ABC that allows posting?

**ctlinnd newgroup Certkiller y news**


Which option must be used with ifconfig, to also see interfaces that are down?

**-a**


Which of the following sentences is true, when using the following /etc/pam.d/login file?

#%PAM-l.0 auth required /lib/security/pam_securetty.so auth required
/lib/security/pam_nologin.so auth sufficient /lib/security/pam_unix.so shadow nullok md5
use_authtok auth required /lib/security/pam_ldap.so use_first_pass account sufficient
/lib/security/pam_unix.so account required /lib/security/pam_ldap.so password required
/lib/security/pam_cracklib.so password sufficient /lib/security/pam_unix.so nullok
use_authtok md5 shadow password required /lib/security/pam_ldap.so use_first_pass
session optional /lib/security/pam_console.so session sufficient /lib/security/pam_unix.so
session required /lib/security/pam_ldap.so

**Ordinary users will be able to change their password to be blank**


LDAP-based authentication against a newly-installed LDAP server does not work as expected. The file /etc/pam.d/login includes the following configuration parameters. Which of them is NOT correct?

**auth required /lib/security/pam_ldap.so**


When configuring a PPP dial-in server, which option is used (in the pppd configuration file) to enable user authentication against the system password database?

**login**


What could be a reason for invoking vsftpd from (x) inetd?

**(x) inetd has more access control capabilities**


Which TWO of the following statements about xinetd and inetd are correct?

**xinetd supports access control by time.**
**xinetd and inetd are used to reduce the number of listening daemons.**


An iptables firewall was configured to use the target MASQUERADE to share a dedicated wireless connection to the Internet with a few hosts on the local network. The Internet connection becomes very unstable in rainy days and users complain their connections drop when downloading e-mail or large files, while web browsing seems to be working fine. Which change to your iptables rules could alleviate the problem?

**Change the target MASQUERADE to SNAT**


Remote access to a CD-RW device on a machine on a LAN must be restricted to a selected user group. Select the TWO correct alternatives that describe the possible solutions for this problem.

**The pam_console module can be used to control access to devices via console,  allowing/denying access to these devices in the user’s session**
**Through the sudo configuration file, it is possible to set users that will have the power of  the root user, so they can access the devices. Besides that, it is important to configure the  /etc/pam.d/su file, so the PAM modules can secure the service**


Select the alternative that shows the correct way to disable a user login (except for root)

**The use of the pam_nologin module along with the /etc/nologin configuration file**


Please enter the command with all parameters and arguments, that could be used by root to
list the cron jobs for the user john.

**crontab -u john -l**


With which parameter in the smb.conf file can a share be hidden?

**browseable**


nfsd, portmap and --------- daemons must be running on an NFS server.

**mountd**


You have installed some new libraries, but these are not available to programs and are not listed by lconfig -p. What file should the path to the libraries be added to, before running ldconfig?

**ld.so.conf**


The users of the local network complain that name resolution is not fast enough. Enter the command, without the path or any options, that shows the time taken to resolve a DNS query.

**dig**

Which file, in the local file-system, is presented when the client requests http://server/~joe/index.html and the following directive is present in server’s Apache configuration file? UserDir site/html Given that all users have their home directory in /home, please type in the FULL file name including the path.

**/home/joe/site/html/index.html**


A procmail recipe is required to delete all emails marked as spam. Please complete the
recipe. :0: * X-Spam-Status: Yes

**/dev/null**


To allow X connections to be forwarded from or through an SSH server, what line must exist in the sshd configuration file?

**X11Forwarding yes**


In which directory are the PAM modules stored?

**/lib/security**


Please enter the complete command to create a new password file for HTTP basic authentication (/home/http/data/web_passwd) for user john.

**htpasswd -c /home/http/data/web_passwd john**


Which file on a Postfix server modifies the sender address for outgoing e-mails? Please enter only the file name without the path

**sender_canonial**


Which command can be used to save the current iptables rules into a file? Please enter only the command without path or parameters.

**iptables-save**


Please enter the command used to remove Kerberos tickets from the cache below.

**kdestroy**


Please enter the Kerberos 5 configuration file name without path below.

**krb5.conf**


Why are different IP addresses recommended when hosting multiple HTTPS virtual hosts? (Choose TWO correct answers.)

**The SSL connection is made before the virtual host name is known by the server.**
**The Server Name Indication extension to TLS is not universally supported.**


Which configuration parameter on a Postfix server modifies only the sender address and not the recipient address?

**sender_canonical_maps**


In order to prevent all anonymous FTP users from listing uploaded file names, what security precaution can be taken when creating an upload directory?

**The directory must not have the read permission set.**


Which of the following files needs to be changed in order to enable anonymous FTP logins with vsftpd?

**/etc/vsftpd.conf**


What option for BIND is required in the global options to disable recursive queries on the DNS server by default?

**recursion no;**


Which subcommands to the openssl command are used in the process of generating a private key and a Certificate Signing Request (CSR)? (Choose TWO correct answers.)

**genrsa**
**req**


In a PAM configuration file, which of the following is true about the sufficient control flag in the following line? Auth sufficient pam_module.so

**Failure of this module will not be considered fatal and, if the module succeeds, success  will be returned to the application immediately without considering and further modules**



