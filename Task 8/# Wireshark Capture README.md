# Wireshark Capture

This repository contains a capture of network traffic made with Wireshark. The capture file (`wireshark_capture.pcap`) contains HTTP traffic collected on a Windows 11 system.

## Capture Details:
- **Operating System**: Windows 11  
- **Tool Used**: Wireshark with Npcap driver  
- **Capture Interface**: Wi-Fi adapter  
- **Protocol Filtered**: HTTP  
- **Key Findings**:
  - Captured HTTP **GET** and **POST** requests between client and server.  
  - Identified HTTP response packets with status codes (200 OK, 404 Not Found).  
  - Observed HTTP headers such as `Host`, `User-Agent`, and `Content-Type`.  
  - Detected communication between the browser and multiple web servers.  

## How to View the Capture:
1. Open the `wireshark_capture.pcap` file in Wireshark.  
2. Apply the filter `http` in the filter bar to view only HTTP traffic.  
3. Select any packet to analyze details such as:
   - Request/Response type  
   - Source and Destination IP addresses  
   - HTTP headers and payload data  

## Example Packets Observed:
- **HTTP GET request** to retrieve a webpage.  
- **HTTP POST request** with form submission data.  
- **HTTP Response** showing server reply with content type (HTML, JSON).  

---
This task demonstrates the use of Wireshark to capture and analyze real network traffic. By filtering HTTP packets, we can observe how web browsers and servers exchange data over the network.
