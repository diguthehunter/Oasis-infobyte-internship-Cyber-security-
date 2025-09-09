# Basic Network Scanning with Nmap

## 🎯 Objective
Use Nmap on Windows 11 to identify open ports and services running on localhost (127.0.0.1).

## 🔧 Nmap Command Used

## 📄 Scan Results Summary
The scan identified **4 open TCP ports**:

| Port | State | Service | Version |
|------|-------|---------|---------|
| 135  | open  | msrpc   | Microsoft Windows RPC |
| 445  | open  | microsoft-ds | Unknown |
| 5357 | open  | http    | Microsoft HTTPAPI httpd 2.0 |
| 5432 | open  | postgresql | PostgreSQL 9.6.0 or later |

## 🛡️ Service Details and Significance
- **Port 135 (msrpc)**: Used for RPC; critical to system operation but also an attack surface.
- **Port 445 (microsoft-ds)**: Used for Windows file and printer sharing.
- **Port 5357 (http)**: Internal HTTP API for system services.
- **Port 5432 (PostgreSQL)**: A database server; should be secured properly.

## 🖼️ Screenshots
📁 `screenshots/nmap_output.png`  
(Screenshot showing terminal output from Nmap.)

## ✅ Tools Used
- OS: Windows 11 (x86)
- Nmap Version: 7.98
- Terminal: PowerShell

## 📎 References
- [Nmap Official Docs](https://nmap.org/docs.html)
