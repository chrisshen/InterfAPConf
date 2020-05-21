sudo apt update
sleep 1
sudo apt upgrade
sleep 1

sudo apt install hostapd
sleep 1

sudo apt install dnsmasq
sleep 1
echo sudo systemctl unmask hostapd
echo sudo systemctl enable hostapd
echo enable hostapd to start on OS starting
sudo systemctl unmask hostapd
sudo systemctl enable hostapd

sleep 1

echo rename and copy ~/Downloads/dhcpcd.conf to /etc
sudo mv /etc/dhcpcd.conf /etc/dhcpcd.conf.orig
sudo cp ~/Downloads/dhcpcd.conf /etc/

sleep 1
echo rename and copy ~/Downloads/dnsmasq.conf to /etc
sudo mv /etc/dnsmasq.conf /etc/dnsmasq.conf.orig
sudo cp ~/Downloads/dnsmasq.conf /etc/

sleep 1

echo copy ~/Downloads/hostapd.conf-simple to /etc/hostapd/hostapd.conf
sudo cp ~/Downloads/hostapd.conf-simple /etc/hostapd/hostapd.conf

echo unblock wlan
sudo rfkill unblock wlan

echo please reboot by "sudo systemctl reboot"
# sudo systemctl reboot
