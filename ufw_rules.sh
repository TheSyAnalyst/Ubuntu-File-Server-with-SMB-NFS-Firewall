#!/bin/bash

# Enable firewall
sudo ufw enable

# Allow Samba
sudo ufw allow 'Samba'

# Allow NFS
sudo ufw allow from 192.168.1.0/24 to any port nfs

# Show rules
sudo ufw status verbose
