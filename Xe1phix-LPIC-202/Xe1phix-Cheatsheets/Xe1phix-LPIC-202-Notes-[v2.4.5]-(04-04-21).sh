







## LDAP search to query an ActiveDirectory server 
ldapsearch -LLL -H ldap://activedirectory.example.com:389 -b 'dc=example,dc=com' -D 'DOMAIN\Joe.Bloggs' -w 'p@ssw0rd' '(sAMAccountName=joe.bloggs)'



## Shows list of users and their details in LDAP
ldapsearch -x -LLL uid=*


ldapsearch -x -b '' -s base '(objectclass=*)' namingContexts
ldapsearch -x -b 'dc=example,dc=com'
ldapsearch -L -x -b 'ou=managers,dc=example,dc=com' '(cn=Maria Garcia)' uid
ldapsearch -LL -x -b 'ou=managers,dc=example,dc=com' '(cn=Maria Garcia)' uid
ldapsearch -LLL -x -b 'ou=managers,dc=example,dc=com' '(cn=Maria Garcia)' uid


## Dump (all) Default Configuration:
ldapsearch -Y EXTERNAL -H ldapi:/// -b "cn=config"



ldapadd -x -D "cn=ldapadm,dc=example,dc=com" -W -f myou.ldif
ldapadd -x -D "cn=ldapadm,dc=example,dc=com" -W -f moreusers.ldif
ldapadd -x -D "cn=ldapadm,dc=example,dc=com" -W -f moreou.ldif


ldappasswd -x -D "cn=ldapadm,dc=example,dc=com" -s UserNewPassword -W "cn=Maria Garcia,ou=managers,dc=example,dc=com"
ldappasswd -x -D "cn=ldapadm,dc=example,dc=com" -S -W "cn=Maria Garcia,ou=managers,dc=example,dc=com"

ldapdelete "cn= Maria Garcia,ou=managers,dc=example,dc=com" -x -D "cn=ldapadm,dc=example,dc=com" -W




# Logging
#  - trace function calls (1)
#  - connection management (8)
#  - ACL processing (128)
#  - stats log connections/operations/results (256)
#  (1 + 8 + 128 + 256)=393
loglevel 393

logfile   /var/log/ldap.log


touch /var/log/ldap.log



## modify the loglevel from 0 (default) 
## to '-1' (which is very verbose).

EnableLogging.ldif
	dn: cn=config
	changetype: modify
	replace: olcLogLevel
	olcLogLevel: -1

## Apply ldif to modify logging definitions:
ldapmodify -Y EXTERNAL -H ldapi:/// -f EnableLogging.ldif
ldapsearch -Y EXTERNAL -H ldapi:/// -b "cn=config" |grep -i log











systemctl status slapd.service
systemctl start slapd.service

netstat -tulpen | grep -i 389
ps -ef | grep slapd



## backup your LDAP entries
slapcat -n 1 > /backup/`date "+%Y%m%d"`.ldif


slapcat -b cn=config
slapcat -b "cn=config" | tail -n 18



ldapmodify -Y EXTERNAL -H ldapi:/// -f mydb.ldif



slaptest -u -v
slaptest -u -v -f slapd.conf
slaptest -f /etc/openldap/slapd.conf -F /etc/openldap/slapd.d/



service ldap stop
service ldap start
systemctl stop slapd.service 
systemctl start slapd.service

chown -R ldap:ldap /var/lib/ldap


ls -l /var/lib/ldap/


slapindex -f /etc/openldap/slapd.conf -b "dc=example,dc=com"


cat schema/core.ldif | grep -i dcobject


slapadd -l mydc.ldif 
slapcat


/etc/openldap/schema/
cat core.ldif 
# OpenLDAP Core schema

TLSCACertificateFile /etc/pki/tls/certs/ca-bundle.crt
TLSCertificateFile /etc/pki/tls/certs/slapd.pem
TLSCertificateKeyFile /etc/pki/tls/certs/slapd.pem



/etc/sssd/sssd.conf








Configure slapd for SSL

Edit the daemon configuration file (/etc/openldap/slapd.conf
# Certificate/SSL Section
TLSCipherSuite DEFAULT
TLSCertificateFile /etc/openldap/ssl/slapdcert.pem
TLSCertificateKeyFile /etc/openldap/ssl/slapdkey.pem

# Certificate/SSL Section
TLSCipherSuite DEFAULT
TLSCertificateFile /etc/letsencrypt/live/ldap.my-domain.com/cert.pem
TLSCertificateKeyFile /etc/letsencrypt/live/ldap.my-domain.com/privkey.pem
TLSCACertificateFile /etc/letsencrypt/live/ldap.my-domain.com/chain.pem
TLSCACertificatePath /usr/share/ca-certificates/trust-source

## use strong ciphers.
TLSCipherSuite HIGH:MEDIUM:-SSLv2:-SSLv3

Update /etc/openldap.conf to use the same ldap settings. Your ldap.conf file will look like this:
SASL_NOCANON on
URI ldaps://ldap.example.com:389
BASE dc=example,dc=com
TLS_REQUIRE never
TLS_CACERTDIR /etc/pki/tls/cacerts
TLS_CACERT /etc/pki/tls/certs/mybundle.pem



tls_cacertfile
tls_cacertdir

/etc/pam_ldap.conf


libnss-ldap



nfswatch






Curl-Create-Encryption-Keys-{[CA+Server+Client]}-[CA]+[Cert]+[CSR]-(vTv)-52pJ3cZg-(vTv).txt
(vTv)
-(\T/)-



$ pid = `ps -ef | grep postfix | grep pickup | awk '{print $2}'`







##Postfix - SMTPS with SSL/TLS

Create a mini certificate authority (CA):

Generate the CA private key:

$ openssl genpkey -algorithm RSA -pkeyopt rsa_keygen_bits:2048 -out ca.key

Generate self-sign CA certificate:

$ openssl req -new -x509 -key ca.key -out ca.crt -days 1095

To see the certificate:

$ openssl x509 -in ca.crt -noout -text

Create the Postfix key and certificate

Generate the mail server private key:

$ openssl genpkey -algorithm RSA -pkeyopt rsa_keygen_bits:2048 -out server.key

Create the certificate request. This time, the CN must be the FQDN of the mail server:

$ openssl req -new -key server.key -out server.csr

Sign the certificate request with the CA private key and certificate.

$ openssl x509 -req -days 1094 -in server.csr -CA ca.crt -CAkey ca.key -set_serial 01 -out server.crt






Installing TLS in Postfix

Move the the following files into 
/etc/postfix/certs
ca.crt
server.crt
server.key

Add the following parameters to the main.cf:

smtpd_tls_loglevel = 1
smtpd_use_tls = yes
smtp_tls_note_starttls_offer = yes
smtpd_tls_cert_file = /etc/postfix/certs/server.crt
smtpd_tls_key_file = /etc/postfix/certs/server.key
smtpd_tls_CAfile = /etc/postfix/certs/ca.crt
smtpd_use_tls = yes
smtpd_tls_session_cache_database = btree:${data_directory}/smtpd_scache
smtp_tls_session_cache_database = btree:${data_directory}/smtp_scache











Configuration

Files:

    /etc/dovecot/dovecot.conf: Dovecot's main configuration file
    /etc/dovecot/dovecot-sql.conf.ext: Dovecot's SQL authdb/userdb module configuration file.
    etc/dovecot/dovecot-ldap.conf.ext: Dovecot's LDAP authdb/userdb module configuration file.
    /etc/dovecot/dovecot-dict-sql.conf.ext: Dovecot's dict configuration with SQL-backend.
    /etc/dovecot/conf.d/auth-*-conf.ext: Configuration files of different authentication modules.
    /etc/dovecot/conf.d/*.conf: Configuration files of different services and settings.





SSL/TLS: Edit /etc/dovecot/conf.d/10-ssl.conf:

ssl = yes
ssl_cert = </etc/postfix/tls/server.crt
ssl_key = </etc/postfix/tls/server.key
ssl_ca = </etc/postfix/tls/ca.crt







Configuring Dovecot SASL plugin Communication between the Postfix SMTP server and Dovecot SASL happens over a UNIX-domain socket or over a TCP socket. 

/etc/dovecot/conf.d/10-master.conf





/etc/dovecot/conf.d/10-auth.conf

smtpd_sasl_type = dovecot
smtpd_sasl_path = private/auth
smtpd_sasl_auth_enable = yes
smtpd_sasl_local_domain = $myhostname
smtpd_sasl_security_options = noanonymous
smtpd_relay_restrictions = permit_mynetworks,
    permit_sasl_authenticated,
    reject_unauth_destination
smtpd_recipient_restrictions = permit_mynetworks, 
    permit_sasl_authenticated





















sample sshd_config File
Port 22
Protocol 2
SyslogFacility AUTH
LogLevel INFO
PermitRootLogin no
StrictModes yes
UsePrivilegeSeparation yes
PasswordAuthentication yes
RSAAuthentication yes
Compression yes
X11Forwarding no
Subsystem
sftp
/usr/libexec/openssh/sftp-server





sshd -p 22 -o 'PasswordAuthentication no'


Initiating an sftp Connection and an sftp Session
sftp -C bob@kitten
sftp> cd /root
sftp> put example.txt
Uploading example.txt to /root/example.txt
sftp> exit



Starting named
named -t /chroot/named -u named

Full Zone Transfer (AXFR )-(Inverted)
Incremental Zone Transfer (IXFR )
-(Inverted)

Typical master-slave configuration
Hidden master-slave configuration

Reverse-mapping query







