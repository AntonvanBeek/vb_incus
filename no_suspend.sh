# Created At: 2020-12-27 12:00:00
# standard logind.conf file is located at /etc/systemd/logind.conf
# Create logind.conf drop-in directory
sudo mkdir -p /etc/systemd/system/systemd-logind.service.d/
# Move the override parameters from the git repository to the drop-in directory
sudo mv /home/anton/host-install/no_suspend.conf /etc/systemd/system/systemd-logind.service.d/
# Reload the systemd daemon and restart the systemd-logind service
sudo systemctl daemon-reload 
sudo systemctl restart systemd-logind

# Disable suspend and hibernate altogether
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target