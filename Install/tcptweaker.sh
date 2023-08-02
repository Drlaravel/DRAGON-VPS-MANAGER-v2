#!/bin/bash

# Function to prompt yes/no questions
prompt_yes_no() {
    read -p "$1 [y/n]: " -e -i n response
    echo "$response"
}

# Function to add TCP Tweaker network settings
add_tcp_tweaker_settings() {
    cat << EOF >> /etc/sysctl.conf

# TCP Tweaker 1.0
net.ipv4.tcp_window_scaling = 1
net.core.rmem_max = 16777216
net.core.wmem_max = 16777216
net.ipv4.tcp_rmem = 4096 87380 16777216
net.ipv4.tcp_wmem = 4096 16384 16777216
net.ipv4.tcp_low_latency = 1
net.ipv4.tcp_slow_start_after_idle = 0
EOF
    sysctl -p /etc/sysctl.conf
}

# Check if TCP Tweaker settings are already added
if grep -q "# TCP Tweaker 1.0" /etc/sysctl.conf; then
    echo ""
    echo "TCP Tweaker network settings have already been added to the system!"
    echo ""
    response0=$(prompt_yes_no "Do you want to remove TCP Tweaker settings?")
    if [[ "$response0" = 'y' ]]; then
        sed -i '/# TCP Tweaker 1.0/,/^net.ipv4.tcp_slow_start_after_idle = 0$/d' /etc/sysctl.conf
        sysctl -p /etc/sysctl.conf > /dev/null
        echo ""
        echo "TCP Tweaker network settings were successfully removed."
        echo ""
    else
        echo ""
    fi
else
    echo ""
    echo "This is an experimental script. Use at your own risk!"
    echo "This script will change some network settings to reduce latency and improve speed."
    echo ""
    response=$(prompt_yes_no "Proceed with installation?")
    if [[ "$response" = 'y' ]]; then
        add_tcp_tweaker_settings
        echo ""
        echo "TCP Tweaker network settings have been added successfully."
        echo ""
    else
        echo ""
        echo "Installation was canceled by the user!"
        echo ""
    fi
fi
exit