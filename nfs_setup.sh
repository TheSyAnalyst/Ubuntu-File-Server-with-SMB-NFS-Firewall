#!/bin/bash

# Install NFS server
sudo apt update
sudo apt install -y nfs-kernel-server

# Create export directory
sudo mkdir -p /srv/nfs/shared
sudo chown nobody:nogroup /srv/nfs/shared
sudo chmod 777 /srv/nfs/shared

# Configure exports
echo "/srv/nfs/shared *(rw,sync,no_subtree_check)" | sudo tee -a /etc/exports

# Apply changes
sudo exportfs -a
sudo systemctl restart nfs-kernel-server
