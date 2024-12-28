# Update package list and upgrade all packages to latest version
sudo apt update
sudo apt upgrade

# Set correct time zone
sudo timedatectl set-timezone Europe/Amsterdam

# Start OpenSSH:
sudo systemctl enable ssh
sudo systemctl start ssh
# Check status
sudo systemctl status ssh

# Configure firewall, permit ssh and enable ufw
sudo ufw allow ssh
sudo ufw enable
