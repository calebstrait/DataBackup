#!/usr/bin/env bash

# Plexon PC variables.
username='Plexon'
password='<password>'
pcName='<name>'
mountFolder='/D'
mountPoint='/Volumes/BatcavePlexonPC'

# Make the mount point directory if it does not exist.
if [ -d "$mountPoint" ]; then
	umount -f $mountPoint
fi
mkdir $mountPoint

# Mount the Plexon PC D drive over the ethernet network.
mount -t smbfs //$username:$password@$pcName$mountFolder $mountPoint