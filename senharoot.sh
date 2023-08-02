#!/bin/bash

# Function to check if a pattern exists in a file
file_contains() {
    grep -q "$1" "$2"
}

# Function to replace a pattern with another in a file
replace_in_file() {
    sed -i "s/$1/$2/g" "$3"
}

# Enable Password Authentication in sshd_config
if file_contains "prohibit-password" /etc/ssh/sshd_config; then
    replace_in_file "prohibit-password" "yes" /etc/ssh/sshd_config
fi

if file_contains "without-password" /etc/ssh/sshd_config; then
    replace_in_file "without-password" "yes" /etc/ssh/sshd_config
fi

if file_contains "#PermitRootLogin" /etc/ssh/sshd_config; then
    replace_in_file "#PermitRootLogin" "PermitRootLogin" /etc/ssh/sshd_config
fi

if ! file_contains "PasswordAuthentication" /etc/ssh/sshd_config; then
    echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
fi

if file_contains "PasswordAuthentication no" /etc/ssh/sshd_config; then
    replace_in_file "PasswordAuthentication no" "PasswordAuthentication yes" /etc/ssh/sshd_config
fi

if file_contains "#PasswordAuthentication no" /etc/ssh/sshd_config; then
    replace_in_file "#PasswordAuthentication no" "PasswordAuthentication yes" /etc/ssh/sshd_config
fi

# Restart the SSH service
service ssh restart > /dev/null

# Prompt to set the root password
clear
echo -e "\033[1;32mTHEN DEFINE THE ROOT PASSWORD\033[0m"
sleep 2s
passwd

# Remove the installer script
rm "$0"