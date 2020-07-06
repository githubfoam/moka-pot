# moka-pot

Travis (.com) dev branch:
[![Build Status](https://travis-ci.com/githubfoam/moka-pot.svg?branch=ubuntu1904)](https://travis-ci.com/githubfoam/moka-pot)  

debian buster64 (master branch)
~~~~
Linux Malware Detect (LMD) https://www.rfxn.com/projects/linux-malware-detect/
yara rules https://github.com/Hestat/lw-yara
blazescan https://github.com/Hestat/blazescan


- chromium
- burpsuite
- ghidra
- impacket https://github.com/SecureAuthCorp/impacket
- nullinux https://github.com/m8r0wn/nullinux
- nipper https://github.com/arpitn30/nipper-ng
- docker

mokapot_debian_reqs:
  - wapiti #web application vulnerability scanner
  - recon-ng #Web Reconnaissance framework written in Python
  - hping3 #Active Network Smashing Tool
  - hashcat #The Network Mapper
  - nmap #Security Scanner, Port Scanner, Network Exploration
  - traceroute #Traces the route taken by packets over an IPv4/IPv6 network
  - mtr #Full screen ncurses and X11 traceroute tool
  - tcpdump #command-line network traffic analyzer
  - ssdeep #recursive piecewise hashing tool fuzzy hashing 	https://ssdeep-project.github.io/ssdeep/index.html
  - socat #multipurpose relay for bidirectional data transfer
  - traceroute #network diagnostic tool
  - mtr #network diagnostic tool
  - net-tools
  - ncat #- NMAP netcat reimplementation
  - p0f #- Passive OS fingerprinting tool
  - pnscan #- Multi threaded port scanner
  - masscan #- TCP port scanner
  - ncrack #- High-speed network authentication cracking tool
  - ndiff #- The Network Mapper - result compare utility
  - netsniff-ng #- Linux network packet sniffer toolkit
  - dnsdiag #- DNS request auditing toolset
  - argus-server #- IP network transaction auditing tool
  - argus-client #- IP network transaction auditing tool
  - dhcpdump #- Parse DHCP packets from tcpdump
  - mitmproxy #- SSL-capable man-in-the-middle HTTP proxy
  - namebench #- DNS benchmark utility
  - ncaptool #- network capture tool
  - ngrep #- grep for network traffic
  - nstreams #- network streams - a tcpdump output analyzer
  - packit #- network packet generator and capture tool
  - python-scapy #- Packet generator/sniffer and network scanner/discovery (Python 2)
  - python3-scapy #- Packet generator/sniffer and network scanner/discovery (Python 3)
  - ssldump #- SSLv3/TLS network protocol analyzer
  - tcpreplay #- Tool to replay saved tcpdump files at arbitrary speeds
  - tcpslice #- extract pieces of and/or glue together tcpdump files
  - tcpspy #- Incoming and Outgoing TCP/IP connections logger
  - tcpstat #- network interface statistics reporting tool
  - tcptrace #- Tool for analyzing tcpdump output
  - tcpick #- TCP stream sniffer and connection tracker
  - tcpxtract #- extract files from network traffic based on file signatures
  - pcapfix #- repairs broken pcap and pcapng files
  - nsntrace #- perform network trace of a single process by using network namespaces
  - ostinato #- Packet/Traffic Generator and Analyzer
  - brutespray #- Python bruteforce tool
  - sec #Simple Event Correlator https://simple-evcorr.github.io/
  - wireshark #network traffic analyzer
  - tshark # network traffic analyzer - console version
  - hydra #very fast network logon cracker parallelized login cracker
  - dnsutils # dig DNS lookup utility Clients provided with BIND
  - netcat #- TCP/IP swiss army knife -- transitional package
  - netcat-traditional #TCP/IP swiss army knife
  - netcat-openbsd #TCP/IP swiss army knife arbitrary TCP and UDP connections and listens https://packages.debian.org/buster/netcat
  - dirb #URL bruteforcing tool web Content Scanner
  - aircrack-ng #wireless WEP/WPA cracking utilities Wireless Security Auditing
  - wifite #- Python script to automate wireless auditing using aircrack-ng tools
  - kismet #- wireless sniffer and monitor layer-2 wireless network detector, sniffer, and intrusion detection system
  - gddrescue  #- GNU data recovery tool
  - sleuthkit #- tools for forensics analysis on volume and filesystem data
  - autopsy #- graphical interface to SleuthKit
  - mac-robber #- collects data about allocated files in mounted filesystems
  - clamav #- anti-virus utility for Unix - command-line interface clamav https://www.clamav.net/downloads

common
system_packages:
  - socat
  - traceroute
  - mtr
  - tcpdump
  - net-tools

SANS tools
quantumduck https://github.com/dagonis/QuantumDuck.git
obscureV4 https://github.com/dagonis/obscureV4.git
pktIntel https://github.com/SecurityNik/pktIntel.git  
~~~~
archlinux branch
~~~~
- nipper
- hcxdumptool https://github.com/ZerBea/hcxdumptool
- hcxtools https://github.com/ZerBea/hcxtools
- hashicorp
- virtualbox

-nettools
OpenVPN
MTR
netcat
nmap
tcpdump
sshuttle
pdsh
wireshark
socat
wireguard
nethogs
bmon

mokapot
- hashcat
- nikto
- nmap
- traceroute
- mtr
- tcpdump
- ssdeep
- socat
- netctl
- openvpn
- wpa_supplicant
- aria2
- curl
- htop
- httpie
- iotop
- jq
- less
- nmap
- openssh
- ripgrep
- rsync
- shellcheck
- usbutils
- which
- chromium
- evince
- mpv
- pcmanfm
- viewnior
- valgrind
~~~~
blackarchlinux branch (building on top of archlinux)
~~~~
https://blackarch.org/tools.html
~~~~
~~~~
parrot https://www.parrotsec.org/
freebsd https://www.freebsd.org/
openbsd https://www.openbsd.org/
netbsd https://www.netbsd.org/
~~~~

~~~~
>vagrant up vg-mokapot-01

==> vg-mokapot-01: Running provisioner: ansible_local...
    vg-mokapot-01: Installing Ansible...
The requested Ansible version (2.9.1) was not found on the guest.
Please check the Ansible installation on your Vagrant guest system (currently: 2.9.4),
or adapt the provisioner `version` option in your Vagrantfile.
See https://docs.vagrantup.com/v2/provisioning/ansible_common.html#version
for more information.

TASK [Gathering Facts] *********************************************************
[DEPRECATION WARNING]: Distribution Ubuntu 19.04 on host vg-mokapot-01 should
use /usr/bin/python3, but is using /usr/bin/python for backward compatibility
with prior Ansible releases. A future Ansible release will default to using the
 discovered platform python for this host. See https://docs.ansible.com/ansible
/2.9/reference_appendices/interpreter_discovery.html for more information. This
 feature will be removed in version 2.12. Deprecation warnings can be disabled
by setting deprecation_warnings=False in ansible.cfg.
ok: [vg-mokapot-01]

~~~~
