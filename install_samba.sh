#!/usr/bin/env bash

sudo apt install samba -y

sudo adduser --system --no-create-home slides

echo "Enter a password for the share access account." && sudo smbpasswd -a slides

sudo mkdir /images
sudo cp -r images/* /images
sudo chown -hR slides images

sudo cp smb.conf /etc/samba/smb.conf
sudo systemctl restart smbd
