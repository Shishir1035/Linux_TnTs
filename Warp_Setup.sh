#!/bin/bash 
echo "Warning! The file is tested on Ubuntu 22.04(jammy) only."
echo "-------------------------------------------------------------------------------"
echo "If the programme pauses at any second press enter. Should continue setting up."
echo "-------------------------------------------------------------------------------"
echo "[+] Downloading Warp. Please wait!"
sudo wget https://pkg.cloudflareclient.com/uploads/cloudflare_warp_2023_1_133_1_amd64_dc941b82de.deb
sleep 2
echo "[+] Installing Warp!!"
sudo dpkg -i cloudflare_warp_2023_1_133_1_amd64_dc941b82de.deb
sleep 2
echo "[+] Fixing errors!!"
sudo apt --fix-broken install -y
echo "[+] Almost there!!"
warp-cli register
read permit
echo "[+] To connect with warp simply write : 'warp-cli connect'"
echo "[+] Deleting .deb file....."
sudo rm cloudflare_warp_2023_1_133_1_amd64_dc941b82de.deb
echo "Have Fun"
