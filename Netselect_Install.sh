echo "[+] Downloading Dependencies.."
wget http://ftp.de.debian.org/debian/pool/main/n/netselect/netselect_0.3.ds1-29_amd64.deb
sleep 1
wget http://ftp.de.debian.org/debian/pool/main/n/netselect/netselect-apt_0.3.ds1-29_all.deb
echo "[+] Installing Netselect-Apt.."
sleep 1
sudo dpkg -i netselect-apt_0.3.ds1-29_all.deb
sleep 1
sudo dpkg -i netselect_0.3.ds1-29_amd64.deb
echo "[-] Deleting deb files.."
sudo rm netselect_0.3.ds1-29_amd64.deb netselect-apt_0.3.ds1-29_all.deb
sleep 1
echo "Enjoy Fastest Mirrors. Run sudo netselect-apt"
