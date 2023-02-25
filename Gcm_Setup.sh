echo "[+] Enter your github username:"
read name
echo "Enter your github mail:"
read mail
echo "[+] Downloading GCM.."
wget "https://github.com/GitCredentialManager/git-credential-manager/releases/download/v2.0.886/gcm-linux_amd64.2.0.886.deb"
git config --global user.name '$name'
git config --global user.email '$mail'
sudo dpkg -i gcm-linux_amd64.2.0.886.deb
sleep 2
git-credential-manager configure 

git config --global credential.credentialStore plaintext
sleep 2
echo "[-] Deleting deb files"
sudo rm gcm-linux_amd64.2.0.886.deb
echo "[+] Enjoy Github"
