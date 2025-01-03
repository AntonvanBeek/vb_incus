

# switch to root
sudo -i

# validate zabbly key file
curl -fsSL https://pkgs.zabbly.com/key.asc | gpg --show-keys --fingerprint

# fetch zabbly key file (check that directory exists)
curl -fsSL https://pkgs.zabbly.com/key.asc -o /etc/apt/keyrings/zabbly.asc

# Add package repository
sh -c 'cat <<EOF > /etc/apt/sources.list.d/zabbly-incus-stable.sources
Enabled: yes
Types: deb
URIs: https://pkgs.zabbly.com/incus/stable
Suites: $(. /etc/os-release && echo ${VERSION_CODENAME})
Components: main
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/zabbly.asc

EOF'

# Update package list
apt-get update

# Install incus
apt-get install incus   
# > accept additional storage

# Add user to incus group
sudo adduser anton incus-admin
newgrp incus-admin

# Create lvm physical volume for incus
lsblk
pvcreate /dev/sda4

# Initialize incus
incus admin init
#> No clustering (default)
#> Yes, new storage pool
#> pool name incus-sp0
#> storage backend lvm
#> new lvm pool yes
#> use existing device/partition yes
#> path to block device: /dev/sda4
#> new network bridge yes
#> network bridge name incusbr0 (default)
#> IPv4 auto
#> IPv6 auto
#> available over network yes
#> address to bind: all (default)
#> port to bind: 8443 (default)
#> Update stale cached imaged: yes (default)
#> YAML init preseed: yes
