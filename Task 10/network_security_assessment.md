# Network Security Assessment Report

## Objective
The objective of this task was to perform a network security assessment on a local/test network. Using **Nmap** for scanning and **Wireshark** for traffic analysis, the goal was to identify potential vulnerabilities, misconfigurations, or weaknesses that could pose risks to the security of the network.

---

## Tools Used
- **Nmap (7.98)** – For host discovery, port scanning, and service version detection.  
- **Wireshark** – For capturing and analyzing network packets to detect unencrypted traffic or suspicious activity.  

---

## Nmap Scan Results

### Network Range Scanned
-----------------------------------------------------------
192.168.1.0/24

### Summary of Findings
Nmap discovered **5 live hosts** in the subnet. Results are summarized below:

#### Host 1: 192.168.1.1 (Router/Gateway)
- **Open Ports:**
  - 80/tcp – HTTP (Web management interface)
  - 443/tcp – HTTPS (Secure management interface)
- **Risk:** Router admin interfaces exposed. If default/weak credentials are used, attackers on the LAN could gain control.

#### Host 2: 192.168.1.100 (Windows 11 Laptop)
- **Open Ports:**
  - 22/tcp – SSH (OpenSSH 8.2)
  - 3389/tcp – RDP (Microsoft Terminal Services)
- **Risk:**  
  - SSH can be brute-forced if weak credentials are used.  
  - RDP is a high-value target for attackers and ransomware operators.  

#### Host 3: 192.168.1.105 (IoT Device – Smart TV)
- **Open Ports:**
  - 8080/tcp – HTTP Proxy / Web Service
- **Risk:** IoT devices often run outdated firmware. Exposed web services may contain vulnerabilities.  

#### Host 4: 192.168.1.110 (Linux Server/VM)
- **Open Ports:**
  - 80/tcp – HTTP (Apache 2.4.41)
  - 443/tcp – HTTPS
- **Risk:** HTTP without forced HTTPS may expose sensitive data. Apache version may have known vulnerabilities if unpatched.  

#### Host 5: 192.168.1.120
- **No open ports detected**  
- **Risk:** None observed.  

---

## Wireshark Traffic Analysis

### Observations
- **Normal LAN Traffic:** ARP broadcasts and ICMP packets were observed.  
- **Plaintext Communications:** HTTP requests were captured, showing sensitive data transmitted without encryption.  
- **No Immediate Signs of Attack:** No malicious payloads, DoS attempts, or external beaconing were detected during capture.  

### Risks Identified
1. HTTP traffic exposes sensitive information in plaintext.  
2. If untrusted devices are connected to the same LAN, captured traffic could be misused for credential theft.  

---

## Combined Security Assessment

### Key Vulnerabilities
- **RDP Exposure:** RDP on host `192.168.1.100` is high-risk and should not be publicly accessible.  
- **SSH Access:** Open SSH without strict authentication policies is vulnerable to brute-force attempts.  
- **Unencrypted Traffic (HTTP):** Sensitive information could be intercepted, compromising user privacy.  
- **IoT Device Risks:** Exposed IoT service (port 8080) may be running outdated software.  
- **Router Management Exposure:** Admin interfaces on `192.168.1.1` may allow attackers to alter critical network configurations.  

---

## Recommendations
- **Close or Restrict Ports:** Disable RDP if not required, or restrict it to VPN only. Restrict SSH to trusted IP ranges.  
- **Strengthen Authentication:** Enforce complex passwords and enable multi-factor authentication (MFA).  
- **Encrypt Traffic:** Redirect all HTTP requests to HTTPS with valid TLS certificates.  
- **Update Systems Regularly:** Patch routers, servers, and IoT devices to prevent known vulnerabilities.  
- **Monitor Traffic Continuously:** Use IDS/IPS and perform regular packet analysis with Wireshark to detect anomalies.  
- **Network Segmentation:** Place IoT devices in a separate VLAN to minimize risk to critical hosts.  

---

## Deliverables
- **nmap_results.txt** – Raw Nmap scan results.  
- **wireshark_capture.pcap** – Network traffic capture file.  
- **network_security_assessment.md** – Combined report with analysis and recommendations (this file).  
