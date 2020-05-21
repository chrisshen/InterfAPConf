sudo apt update
sleep 1
sudo apt upgrade
sleep 1

sudo apt install hostapd
sleep 1

sudo apt install dnsmasq

sleep 1

echo rename and copy ~/Downloads/InterfAPConf-master/dhcpcd.conf to /etc
sudo mv /etc/dhcpcd.conf /etc/dhcpcd.conf.orig
sudo cp ~/Downloads/InterfAPConf-master/dhcpcd.conf /etc/

sleep 1
echo rename and copy ~/Downloads/InterfAPConf-master/dnsmasq.conf to /etc
sudo mv /etc/dnsmasq.conf /etc/dnsmasq.conf.orig
sudo cp ~/Downloads/InterfAPConf-master/dnsmasq.conf /etc/

sleep 1

echo copy ~/Downloads/InterfAPConf-master/hostapd.conf-simple to /etc/hostapd/hostapd.conf
sudo cp ~/Downloads/InterfAPConf-master/hostapd.conf-simple /etc/hostapd/hostapd.conf

echo unblock wlan
sudo rfkill unblock wlan

sleep 1
echo sudo systemctl unmask hostapd
echo sudo systemctl enable hostapd
echo enable hostapd to start on OS starting
sudo systemctl unmask hostapd
sudo systemctl enable hostapd

echo please reboot by "sudo systemctl reboot"
# sudo systemctl reboot
