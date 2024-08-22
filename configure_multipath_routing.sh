
# 일단 최종
sudo ip rule add from 192.168.12.71 table 12
sudo ip route add default via 192.168.12.195 dev eth1 table 12
sudo ip route add 192.168.12.0/24 dev eth1 table 12

#sudo ip rule del from 192.168.11.71 table 12

sudo ip rule add from 192.168.34.50 table 34
sudo ip route add default via 192.168.34.1 dev wlan1 table 34
sudo ip route add 192.168.34.0/24 dev wlan1 table 34

#sudo ip rule del from 192.168.34.50 table 134


sudo ip rule add from 192.168.93.13 table 93
sudo ip route add default via 192.168.93.1 dev wlan0 table 93
sudo ip route add 192.168.93.0/24 dev wlan0 table 93

#sudo ip rule del from 192.168.93.13 table 9393