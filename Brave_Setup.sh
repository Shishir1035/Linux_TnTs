#!/bin/bash
echo "----------------------------------------------------------------------------------------------------------------"
echo "Warning! The file is tested on Ubuntu 22.04(jammy) & Kali Linux only. Should work on other debian distros too. "
echo "----------------------------------------------------------------------------------------------------------------"
echo "[+] Processing Brave Keyring..."
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sleep 1
sudo apt update
sudo apt install brave-browser -y
echo "[+] ALso keyring issue Solved! Adios"
