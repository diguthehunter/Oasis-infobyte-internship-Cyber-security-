# Cybersecurity Lab – Tasks

This repository has four tasks related to basic cybersecurity practices: network scanning, firewall setup, traffic capture, and a full security assessment.

---

## Task 1: Network Scanning with Nmap

Goal:- Find open ports and services in a system using Nmap.

*What I did*

Installed Nmap.
Scanned a local machine/VM.
Checked which ports were open and what services were running.
Wrote down the meaning of each open port.

*Files included*

nmap_scan_results.txt – the scan results.
Screenshots of the Nmap output.
README (this file) with explanation.


## Task 2: Firewall Setup with UFW

Goal:- Configure a simple firewall on Linux using UFW.

*What I did*

Installed UFW.
Allowed SSH (port 22).
Blocked HTTP (port 80).
Checked firewall status to confirm rules.

*Files included*

ufw_configuration.sh – firewall rules.
Screenshot of ufw status.
README (this file) with explanation.



## Task 8: Network Traffic Capture with Wireshark

Goal:- Capture and study network traffic.

*What I did*

Installed Wireshark.
Captured live traffic.
Used filters to view only HTTP packets.
Looked at packet details like source, destination, and protocol.

*Files included*

wireshark_capture.pcap– packet capture file.
README (this file) with explanation.


## Task 10: Security Assessment Report

Goal:- Do a full security check of the network.

*What I did*

Used Nmap to scan the network.
Used Wireshark to capture traffic.
Found possible risks, like open ports and unencrypted traffic.
Wrote a report with findings and suggestions.

*Files included*

network_security_assessment.md – full report.
nmap_results.txt – scan results.
wireshark_capture.pcap – packet capture.


## Repository Layout

Task1_Nmap
  ├── nmap_scan_results.txt
  ├── screenshots/
  └── README.md

Task2_UFW
  ├── ufw_configuration.sh
  ├── screenshots/
  └── README.md

Task8_Wireshark
  ├── wireshark_capture.pcap
  └── README.md

Task10_Security_Assessment
  ├── network_security_assessment.md
  ├── nmap_results.txt
  └── wireshark_capture.pcap

Combined_README.md   ← (this file)

