#!/bin/bash

# Define variables
CONTAINER_NAME="crypt"
MOUNT_POINT="/mnt/deru"
SPLIT_FILES="/home/sean/Desktop/horcrux"
SIZE="3G"
PASSWORD="YourPassword"

# Create a 3GB random file for the container
sudo dd if=/dev/urandom of=$CONTAINER_NAME bs=1M count=3072

#Create the mount point for the container and its output files
sudo mkdir -p $MOUNT_POINT
sudo mkdir -p $SPLIT_FILES

# Create a VeraCrypt container
sudo veracrypt --text --create --volume-type=normal $CONTAINER_NAME --size $SIZE --password $PASSWORD --encryption AES --hash SHA-512 --filesystem FAT --pim 0 -k "" --random-source=/dev/urandom


# Give user permissions to the mounted directory
sudo chown -R $(whoami) $MOUNT_POINT

# Mount the VeraCrypt container with user permissions
#veracrypt --text --mount $CONTAINER_NAME --password $PASSWORD --filesystem FAT --slot=1 --mappings=$MOUNT_POINT

# Display success message
#echo "VeraCrypt container created and mounted successfully at $MOUNT_POINT with user permissions"

horcrux -t 3 -n 5 split $SPLIT_FILES
sudo rm crypt
