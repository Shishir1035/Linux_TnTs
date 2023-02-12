echo '[+] Wait few seconds. Installing keyring'
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
sleep 1
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sleep 1
sudo apt install sublime-text
sleep 1
echo "[-] If fails try using sudo apt-get install apt-transport-https"
echo "[+] Exiting.. Happy Coding!!"
