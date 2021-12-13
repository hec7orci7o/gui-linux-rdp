# Parrot OS latest with useful tools
FROM parrotsec/core:latest

ARG DEBIAN_FRONTEND=noninteractive
# Update
RUN apt -y update && apt -y full-upgrade && apt -y dist-upgrade && apt -y autoremove && apt clean

# Install hardware packages
RUN apt -y install pciutils usbutils

# xrdp + desktop
RUN apt -y install xrdp parrot-xfce

# Kali Linux top10 metapackages: https://www.kali.org/tools/kali-meta/
RUN apt -y install aircrack-ng hydra nmap wireshark burpsuite john responder crackmapexec metasploit-framework sqlmap \ 
    openvpn

# change user to your username
WORKDIR /home/user  
