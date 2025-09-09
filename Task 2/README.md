# Basic Firewall Configuration with UFW

## 🎯 Objective
Set up a basic firewall using UFW on a Linux system to allow SSH and deny HTTP.

## 🔧 Tools Used
- UFW (Uncomplicated Firewall)
- Ubuntu via WSL on Windows 11

## 🛠️ Configuration Steps

```bash
sudo apt update
sudo apt install ufw -y
sudo ufw allow ssh
sudo ufw deny http
sudo ufw enable
sudo ufw status numbered
