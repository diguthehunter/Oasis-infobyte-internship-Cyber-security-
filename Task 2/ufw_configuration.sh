#!/bin/bash

# Update and install ufw
sudo apt update
sudo apt install ufw -y

# Configure firewall
sudo ufw allow ssh
sudo ufw deny http

# Enable UFW
sudo ufw enable

# Show status
sudo ufw status numbered
