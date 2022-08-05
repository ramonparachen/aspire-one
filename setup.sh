sudo apt install openbox obconf idesk tint2 network-manager network-manager-gnome cbatticon xterm lightdm
echo "deb http://ftp.de.debian.org/debian bookworm main" | sudo tee -a /etc/apt/sources.list
sudo apt update
sudo apt install jgmenu
sudo sed -i '$d' /etc/apt/sources.list

cp /usr/share/idesk/dot.ideskrc ~/.ideskrc
mkdir ~/.idesktop

echo "table Icon" >> ~/.idesktop/chromium.lnk
echo "	Caption: Chromium" >> ~/.idesktop/chromium.lnk
echo "	Icon: /usr/share/icons/hicolor/48x48/apps/chromium.png" >> ~/.idesktop/chromium.lnk
echo "	Command[0]: chromium" >> ~/.idesktop/chromium.lnk
echo "end" >> ~/.idesktop/chromium.lnk

echo "table Icon" >> ~/.idesktop/firefox.lnk
echo "	Caption: Firefox" >> ~/.idesktop/firefox.lnk
echo "	Icon: /usr/share/icons/hicolor/48x48/apps/firefox-esr.png" >> ~/.idesktop/firefox.lnk
echo "	Command[0]: firefox" >> ~/.idesktop/firefox.lnk
echo "end" >> ~/.idesktop/firefox.lnk

echo "table Icon" >> ~/.idesktop/firefox.lnk
echo "	Caption: Midori" >> ~/.idesktop/firefox.lnk
echo "	Icon: /usr/share/icons/hicolor/48x48/apps/firefox.png" >> ~/.idesktop/firefox.lnk
echo "	Command[0]: midori" >> ~/.idesktop/firefox.lnk
echo "end" >> ~/.idesktop/firefox.lnk

mkdir ~/.config/openbox
echo "tint2 &" > ~/.config/openbox/autostart.sh
echo "idesk &" > ~/.config/openbox/autostart.sh
echo "nm-applet &" > ~/.config/openbox/autostart.sh
echo "cbatticon -l 20 -r 10 &" > ~/.config/openbox/autostart.sh
chmod +x ~/.config/openbox/autostart.sh

