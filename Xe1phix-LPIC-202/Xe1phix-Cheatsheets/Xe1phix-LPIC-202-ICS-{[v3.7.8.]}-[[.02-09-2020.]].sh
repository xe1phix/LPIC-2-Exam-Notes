














Tier 1 servers, are the core DNS servers hosting authoritative zones, 
for all OpenNIC TLDs and the root (.) zone. 

Tier 2 servers are “DNS Resolvers” or, servers that actually do the heavy-lifting when querying OpenNIC's DNS infrastructure. These are the servers that clients use in their configuration directly, 




create a zone file for a forward or reverse zone
hints for root level servers.

adding hosts in zones
adding zones to the DNS
delegate zones to another DNS server.
setting appropriate values for records



Zones are the equivalent of domains.  
Zone configuration files consist of hostnames and IP address information.

Location of named.conf

According  to LPI the location of the file named.conf
is in the /etc directory.   
However, the location may vary across distributions. 
For example in the Debian Linux distribution named.conf
is located in the /etc/bind directory.




The logging statement

The distinction between categories and channels is an important part of logging.
A channel - an output specification.
	-> The null channel - dismisses any output sent to the channel

A category - is a type of data

To turn off logging for certain types of data, send it to the null channel, 
as is done in the example named.conf

logging {
		category lame-servers { null; };
		category cname { null; };
};

This means that messages of types lame-servers and cname are being discarded







• root servers - these servers are the “end point,” 
				 where DNS queries are passed off to by all other DNS servers 

•

 [?] currently, there are 13 root server entries 
 
 
 (described by default in the BIND zone files - see configuration further down) 



 [+] The DNS	database structure,	also called	the Domain Name Space


These	dot-separated	letters	make	up	a fully	qualified	domain	name	(FQDN


 [+] FQDN (fully qualified domain name) - the host name followed by the domain it belongs to (i.e. user1.mylabserver.com is the FQDN for one of the Linux Academy lab servers with the host name ‘user1’)

Fully Qualified Domain Name (FQDN) - the name for an entire URL that resolves a resource. 


 Top Level Domain - the last part of an FQDN. This is typically “.com”, “.org”
 
 

 [+] Subdomain • part of the larger domain (for example, dev.mylabserver.com, qa.mylabserver. com, prod.mylabserver.com - each subdomain indicating the environment it represents) 


Zones Because a zone defines what a domain name server has authority over


 [+] Zone files and records • this file stores the translation from IP to name and a record is the individual line that represents one such translation 


 [+] Forward lookups - IP to domain name (default DNS behavior) 


 [+] Reverse lookup - domain name to IP

 
 [?] nslookup - Forward lookup + Reverse Lookup


 [?] dnsmasq - additional DNS server that functions as a forwarding DNS server and/or for DHCP 
 
 [?] PowerDNS - load balanced DNS server (service) that was originally proprietary but later open sourced 

 [?] djbdns • developed as a more secure alternative to the BIND DNS server
 
 
 
/sbin/named-checkconf /etc/named.conf

 [+] /etc/named.conf 
	[?] primary configuration file for the BIND server  
	[?] read by the BIND service on start (BIND service named)


	[+] dump-file - directory of the file created with the rndc dumpdb command 

	[+] allow-query - indicates the systems the server will respond to 

		[-] Example allow-query { localhost; !10.1.0.100; 10.1.0/24 }; 
			[?] will allow queries from localhost, and the entire 10.1.0/24 network EXCEPT 10.1.0.100
	
	[+] dnssec-enable - set to yes will enable the DNSSEC (Secure DNS Extension), 
	[+] dnssec-validation - enables the user of managed keys (trusted) 
	[+] bindkeys-file - the file used if the dnssec-lookaside directive is set to auto 
	[+] session-keyfile - contains the Transaction Signature session key (TSIG), used for authenticated updates to DNS 
	[+] logging - allows the definition of logging locations as well as the level of messages that are written (called severity) 
	[+] 
	[+] 
	[+] 
	[+] 
	[+] 
	[+] 


[+] 


 [+] Neighbor Discovery Protocol (NDP) - translates IPv6 addresses into	MAC addresses



systemctl start named

cat /etc/rndc.key

rndc reload


rndc-confgen - creates a default configuration file for the rndc utility 

rndc-confgen -r /dev/urandom -a
rndc-confgen -r /dev/urandom > /etc/rndc.conf 




/etc/rndc.conf - default configuration file for the rndc utility 


chgrp named rndc.conf
chmod 640 rndc.conf




dig -t NS 

dig -t MX 



 [+] Record Types:
 [+] SOA - start of authority	## defines the authoritative information about a zone, contains:
			[•]	Name server		## domain name of the master name server (in our example - named.mydomain.com)
			[•]	Email			## DNS admin email (note: can be anything, but substitute a ‘.’ dot character for ‘@’ in the address)
			[•]	Serial number	## a number that indicates whether a zone needs to be updated to a slave, anytime you make a change to a zone file, this serial number should be incremented by some
			[•]	Refresh			## determines the frequency a slave server queries the master to determine if updates are needed
			[•]	Retry			## how long a slave will wait to retry a master query for an update
			[•]	Expiry			## when the slave server stops responding to DNS query requests if the master 
			[•]	Minimum			## length of time to cache ‘negative’ responses (response that a domain or record does not exist before requerying for the value)


 [+] Pointer (PTR) - used in reverse lookup zone files
                     so that the IP can be translated into the name
			[•]	101.0.1.10.in-addr.arpa.    IN    PTR    prod.mydomain.com. (Full reverse record)
 			[•]	101    IN    PTR    prod.mydomain.com. 
 

 
 

PTR Record

    The PTR (Pointer) Record configures reverse lookups for DNS (Reverse DNS), such as for resolving IP addresses to hostnames. PTR Records work in conjunction with A records as they do the reverse work of each other.
    In LAB02, we connected a PTR record between the firewall machine (fw01) and the Active Directory so that the AD and the workstation would be able to ping the firewall from the IP address and have the hostname be returned.


 
 
 
 
 
 
 
 [+] address type (A) - defines a direct ‘name to address’ translation


 [+] 
			[•]	
			[•]	
			[•]	


 [+] A Reverse Zone - is a special zone that provides a mapping from an IP address to
a FQDN (reverse of traditional DNS name server resolution)
			[•]	


 [+] canonical name - allows you to define a host with more that one name (or role) in your domain


 [+] name server


 [+] MX (mail exchange) records
 		[?]	the number indicates the priority (order) they should be tried (

 [+] 


 [+] SPF record is a DNS TXT record that contains the IP addresses of the servers that are permitted to send email for a domain.


 
reverse DNS lookup (rDNS)
 
 
In order for rDNS to work, a so called pointer DNS
record (PTR record) has to exist for the host being queried.
 

SRV - service locator, locates services such as SIP servers, conference servers, or other services.





The authoritive nameserver for a zone is the nameserver which administrates the zone configuration.

also referred to as the zone master


A recursive nameserver is a nameserver that resolves zones 
for which it is not authoritive for at other nameservers.
 
 supports blocking by ASN numbers
 
 supports blocking by iso country codes
 
 
 
 
 
 

 [+] masterfile-format - text|raw


 [+] preference ranking - 


 [+] Canonical
Name


 [+] The CNAME in the second line declares that this resource record is a canonical
name record.


 [+] CNAME record types should point to host address (A) record types only.



 [+] The primary differences between this reverse zone file and other zone files are
the $ORIGIN directive and the PTR resource records. 


 [+] A
PTR resource record starts with the host’s final IP octet, includes the IN class and
PTR type directives, and ends with the host’s FQDN plus a trailing dot. 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 


 [+] 



 
 
 
 
 danetool Examples
DANE TLSA RR generation

To create a DANE TLSA resource record for a certificate (or public key) that was issued localy and may or may not be signed by a CA use the following command.

$ danetool --tlsa-rr --host www.example.com --load-certificate cert.pem

To create a DANE TLSA resource record for a CA signed certificate, which will be marked as such use the following command.

$ danetool --tlsa-rr --host www.example.com --load-certificate cert.pem \
  --no-domain

The former is useful to add in your DNS entry even if your certificate is signed by a CA. That way even users who do not trust your CA will be able to verify your certificate using DANE.

In order to create a record for the CA signer of your certificate use the following.

$ danetool --tlsa-rr --host www.example.com --load-certificate cert.pem \
  --ca --no-domain

To read a server’s DANE TLSA entry, use:

$ danetool --check www.example.com --proto tcp --port 443

To verify an HTTPS server’s DANE TLSA entry, use:

$ danetool --check www.example.com --proto tcp --port 443 --load-certificate chain.pem

To verify an SMTP server’s DANE TLSA entry, use:

$ danetool --check www.example.com --proto tcp --starttls-proto=smtp --load-certificate chain.pem

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



dig +noall +answer A mail.163.com


dig +noall +answer A mail.163.com | awk '{print $5}'



## Reverse domain name resolution (PTR record)

dig -x 220.181.14.155 +noall +answer





dig @10.0.1.100 erowid.org 		## would provide all information for the mylabserver.com domain using the domain server at address 10.0.1.100 

dig @localhost erowid.org


rndc flushname erowid.org			## flush domain lookup

rndc flush							## flush all domains




host erowid.org localhost

host user.mylabserver.com 8.8.8.8 






##----------------------------------------##
##  [+} Display SOA using dig command
##----------------------------------------##
$ dig SOA {domain.com}
$ dig SOA cyberciti.com



##----------------------------------------##
##  [+} Display SOA using host command
##----------------------------------------##
$ host -t soa {domain.com}
$ host -t soa cyberciti.com







nslookup $Domain.com					## Query A and PTR Records
nslookup $Domain.com x.x.x.x			## Query A and PTR record using a different name server
nslookup -querytype=mx $Domain.com		## Query MX record. Replace MX with other query type
nslookup set type=mx $Domain.com		## Another way of doing above with the interactive option
nslookup -norecursive $Domain.com		## non recursive lookup
nslookup recursive $Domain.com			## recursive lookup



## DNS zone transfer
nslookup server $Server set type=any ls -d $Target


## return verbose information about a record
set debug




dig $Domain.com +nssearch



dig $Domain.com +nssearch | cut -d' ' -f4,11  







Query DNS bind version information Most DNS servers use BIND to query the version information of bind, 
 not all DNS servers can query BIND information, 
 most dns servers The protection mode is set
 and cannot be queried in this way.


dig +noall +answer $Domain.com ns

dig +noall +answer txt chaos VERSION.BIND ns3.sina.com.cn.







dig @ns4.sina.com sina.com axfr














Q. 1  The .edu domain is considered which domain type? (Choose the best answer.)


edu domain is a Top-Level Domain (TLD),




Domain Name Space is broken into different zones.
 Which of the following could be one of those zones? (Choose all that apply.)
 
a zone can be either a first-level domain and all of its subdomains 
or a first-level domain and a portion of its subdomains.
A zone can be the root zone, 
which is a special zone managed by root servers and encompasses the root domain, 
the hint zone is another name for the root zone.






Which of the following server combinations could be the minimum two name servers required for a zone? (Choose all that apply.)

 one of the servers must be a primary (master) server 
 
 
 
 
 name of association	URL
AFRINIC	Http://www.afrinic.net
APNIC	Http://www.apnic.net
ARIN	Http://ws.arin.net
IANA	Http://www.iana.com
ICANN	Http://www.icann.org
LACNIC	Http://www.lacnic.net
NRO	Http://www.nro.net
RIPE	Http://www.ripe.net
InterNic	Http://www.internic.net
 
 
 
 
## use the kill command to reload configuration
kill -s SIGHUP $(cat /run/named/named.pid)
kill -s SIGHUP BIND_PID



dig +short +identify $Domain.com




systemctl start named
systemctl enable named
service bind9 start




time nslookup $Domain.com



## obtain a quick look at the time that you
## may be saving by employing this DNS type
## direct the query to the local caching-only DNS server,

time nslookup $Domain.com 192.168.0.103











CentOS distribution, the zone files are called /var/named/named.label

ls -1 /var/named/named.*




these zone files are typically called
/etc/bind/db.label.

ls -1 /etc/bind/db.*



 named-checkconf /etc/named.conf










 
 
openssl s_client -connect smtp.gmail.com:587 -starttls smtp < /dev/null 2>/dev/null |
openssl x509 -fingerprint -noout -in /dev/stdin | cut -d'=' -f2




openssl s_client -showcerts -starttls smtp -connect smtp_relay:smtp_relay_port < /dev/null 2> /dev/null




sudo -u postfix openssl s_client -showcerts -starttls smtp -connect smtp.gmail.com:587 < /dev/null 2> /dev/null



openssl s_client -CApath /etc/ssl/certs -showcerts -starttls smtp -connect smtp_relay:smtp_relay_port < /dev/null 2> /dev/null

 
 
 
 
 
 

