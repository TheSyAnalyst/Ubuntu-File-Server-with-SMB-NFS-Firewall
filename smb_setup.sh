#!/bin/bash

# Install Samba
sudo apt update
sudo apt install -y samba

# Create shared directory
sudo mkdir -p /srv/samba/shared
sudo chmod 2770 /srv/samba/shared
sudo chown nobody:users /srv/samba/shared

# Create Samba user
read -p "Enter Samba username: " smbuser
sudo useradd "$smbuser"
sudo smbpasswd -a "$smbuser"

# Configure Samba share
echo "[Shared]
   path = /srv/samba/shared
   browsable = yes
   writable = yes
   guest ok = no
   valid users = $smbuser" | sudo tee -a /etc/samba/smb.conf

# Restart service
sudo systemctl restart smbd
