# Install network bridge to allow containers an ip address on the lan
sudo apt update

sudo apt install net-tools
ifconfig
#lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
#        inet 127.0.0.1  netmask 255.0.0.0
#        inet6 ::1  prefixlen 128  scopeid 0x10<host>
#        loop  txqueuelen 1000  (Local Loopback)
#        RX packets 108  bytes 9384 (9.3 KB)
#        RX errors 0  dropped 0  overruns 0  frame 0
#        TX packets 108  bytes 9384 (9.3 KB)
#        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
#
#wlo1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
#        inet 192.168.178.54  netmask 255.255.255.0  broadcast 192.168.178.255
#        inet6 fe80::d6d2:52ff:fefd:a89f  prefixlen 64  scopeid 0x20<link>
#        ether d4:d2:52:fd:a8:9f  txqueuelen 1000  (Ethernet)
#        RX packets 6802  bytes 2440955 (2.4 MB)
#        RX errors 0  dropped 3531  overruns 0  frame 0
#        TX packets 927  bytes 173635 (173.6 KB)
#        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

# Create virtual switch - 
# Install switch software
sudo apt install openvswitch-switch
# Create switch
cd /etc/netplan
ls -al
#total 12
#drwxr-xr-x   2 root root 4096 Jan  3 17:48 .
#drwxr-xr-x 111 root root 4096 Jan  3 17:23 ..
#-rw-------   1 root root  882 Jan  3 17:48 50-cloud-init.yaml

# Install bridge-utils if it's not already installed 
sudo apt-get install bridge-utils

## Given up creating a network bridge for now !!!!!