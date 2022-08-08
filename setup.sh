sudo apt install openbox obconf tint2 network-manager network-manager-gnome cbatticon volumeicon-alsa xterm lightdm pcmanfm
echo "deb http://ftp.de.debian.org/debian bookworm main" | sudo tee -a /etc/apt/sources.list
sudo apt update
sudo apt install jgmenu
sudo sed -i '$d' /etc/apt/sources.list

mkdir -p ~/.config/openbox
cp autostart.sh ~/.config/openbox/
chmod +x ~/.config/openbox/autostart.sh

mkdir -p ~/.config/tint2
cp tint2rc ~/.config/tint2
cp -r launchers ~/.config/tint2
