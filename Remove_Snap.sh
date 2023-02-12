echo 'sudo snap remove --purge package-name'
sudo rm -rf /var/cache/snapd/
sudo apt autoremove --purge snapd gnome-software-plugin-snap
sudo rm -fr ~/snap
sudo apt-mark hold snapd

