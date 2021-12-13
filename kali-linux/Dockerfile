# Kali Linux latest with useful tools
FROM kalilinux/kali-rolling

ARG DEBIAN_FRONTEND=noninteractive
# Update
RUN apt -y update && apt -y full-upgrade && apt -y dist-upgrade && apt -y autoremove && apt clean

# Install hardware packages
RUN apt -y install pciutils usbutils

# xrdp + desktop
RUN apt -y install xrdp kali-desktop-xfce 

# Kali Linux Metapackages
RUN apt -y install kali-tools-top10 \
    openvpn

# change user to your username
WORKDIR /home/user