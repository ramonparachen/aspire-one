sudo apt install openbox obconf tint2 network-manager network-manager-gnome cbatticon xterm lightdm
echo "deb http://ftp.de.debian.org/debian bookworm main" | sudo tee -a /etc/apt/sources.list
sudo apt update
sudo apt install jgmenu
sudo sed -i '$d' /etc/apt/sources.list

mkdir ~/.config/openbox
cp autostart.sh ~/.config/openbox/
chmod +x ~/.config/openbox/autostart.sh

