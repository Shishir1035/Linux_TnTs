echo "[+] Installing Basic Packages..."
sleep 1

echo "[+] Downloading RosaImageWriter to current directory"
sudo wget http://wiki.rosalab.ru/en/images/7/7f/RosaImageWriter-2.6.2-lin-x86_64.tar.xz
sleep 1
echo "[+] Downloading Qbittorrent..."
sudo wget https://www.fosshub.com/qBittorrent-old.html?dwl=qbittorrent-4.4.5_x86_64.AppImage
sleep 1

echo "[+] Installing AppImageLauncher"
sudo wget https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
sudo dpkg -i appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
sudo rm appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
echo "[-] Removing deb pack..."
sleep 2

echo "[+] Installing gdu mpv terminator timeshift bleachbit mpv ranger"
sudo apt install gdu mpv terminator timeshift bleachbit mpv ranger fish -y
sleep 1

echo "[+] Done!!!"
sleep 2

echo "[+] Installing the fun stuff!! figlet fortune libaa-bin!!!"
sudo apt install sl figlet cmatrix hollywood fortune libaa-bin -y
sleep 2
echo "[-] Exiting !!"
