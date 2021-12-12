# Kali Linux latest with useful tools by tsumarios
FROM kalilinux/kali-rolling

ARG DEBIAN_FRONTEND=noninteractive
# Update
RUN apt -y update && apt -y full-upgrade && apt -y dist-upgrade && apt -y autoremove && apt clean

# Install hardware packages
RUN apt -y install pciutils usbutils

# Kali Linux Metapackages
RUN apt -y install kali-linux-headless && apt -y install kali-tools-top10

# xrdp + desktop
RUN apt -y install xrdp kali-desktop-xfce 

# Other tools
RUN apt -y install pip nano

WORKDIR /home/<user>