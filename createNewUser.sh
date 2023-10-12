#!/bin/bash

# Prompt the user for a new username
read -p "Enter the new username: " username

# Check if the username already exists
if id "$username" &>/dev/null; then
    echo "User $username already exists. Please choose a different username."
    exit 1
fi

# Prompt the user for a password
read -s -p "Enter the password for $username: " password
echo

# Create the user
useradd -m -s /bin/bash "$username"

# Set the password for the user
echo "$username:$password" | chpasswd

# Add the user to the sudoers group
usermod -aG sudo "$username"

echo "User $username created and added to the sudoers group."
