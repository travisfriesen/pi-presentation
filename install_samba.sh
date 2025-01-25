#!/usr/bin/env bash

adduser --system --no-create-home slides

echo "Enter a password for the share access account." && passwd slides

mkdir /images
cp -r images /images

cp smb.conf /etc/samba/smb.conf
