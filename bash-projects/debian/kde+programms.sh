#! /bin/bash

####################О скрипте###################
# Данный скрипт поможет вам развернуть систему #
#            Build date: 27-03-2021            #
################################################

echo "deb http://deb.debian.org/debian bullseye main contrib non-free" >> /etc/apt/sources.list
echo "deb http://deb.debian.org/debian bullseye-updates main contrib non-free" >> /etc/apt/sources.list
apt update
apt upgrade
clear
apt install -y sudo bash-completion
clear
echo "nik ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
apt install -y firmware-linux firmware-linux-nonfree libdrm-amdgpu1 linux-headers-$(uname -r)
apt install -y xorg plasma-desktop konsole dolphin firefox-esr lightdm
apt install -y flameshot geany okular viewnior adb fastboot isomaster kolourpaint gimp ark unrar
apt purge -y gnustep* kdeconnect*
reboot
