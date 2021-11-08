

option dhcp-lease-time 

option domain-name-servers 
option domain-search 
option host-name 
option ntp-servers

option routers 
option smtp-server 
option static-routes


option dhcp6.name-servers 
option dhcp6.domain-search



sudo gedit /etc/resolv.conf
nameserver 8.8.4.4
nameserver 8.8.8.8

sudo gedit /etc/network/interfaces
dns-addresses 8.8.4.4,8.8.8.8

sudo nano /etc/dhcp/dhclient.conf
supersede domain-name-servers 8.8.8.8, 8.8.4.4;
sudo service network-manager restart

nmcli con mod static2 ipv4.dns "8.8.8.8 8.8.4.4"



nmcli device show wlp3s0 | grep IP4.DNS
IP4.DNS[1]:192.168.2.1

nmcli -t -f IP4.DNS device show wlp3s0
IP4.DNS[1]:192.168.2.1

nmcli device show wlp3s0
nmcli device show wlp3s0 | grep IP4


Add Google DNS
nmcli con # read connectionName
nmcli con mod $ConnectionName ipv4.dns "8.8.8.8 8.8.4.4"
nmcli con down $ConnectionName
nmcli con up $ConnectionName



# Flush DNS Cache in Linux
sudo /etc/init.d/dns-clean
sudo /etc/init.d/dns-clean start
sudo /etc/init.d/networking restart
sudo /etc/init.d/networking force-reload
sudo systemd-resolve --flush-caches
sudo service network-manager restart

sudo systemd-resolve --flush-caches
sudo systemd-resolve --statistics



ip route show
tcpdump -i eth0 -n -s0 -e
ip route get 8.8.4.4 from 192.168.130.100
traceroute 8.8.4.4


strace -cfo "$STRACE_OUTPUT_FILE" "$@" && awk '{print $NF}' "$STRACE_OUTPUT_FILE" | sed '/syscall\|-\|total/d' | sort -u | awk -vORS=, '{ print $1 }' | sed 's/,$/\n/' > "$SYSCALLS_OUTPUT_FILE"
  echo














