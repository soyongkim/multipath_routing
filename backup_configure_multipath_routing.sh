# sudo ip route add default via 192.168.34.1 dev wlan0 table table34
# sudo ip route add 192.168.34.0/24 dev wlan0 table table34
# sudo ip rule add from 192.168.34.128 lookup table34


# sudo ip rule add from 192.168.36.71 table 36
# sudo ip route add default via 192.168.36.54 dev eth2 table 36
# sudo ip route add 192.168.36.0/24 dev eth2 table 36



# sudo ip route add default via 192.168.93.1 dev eth1 table table93
# sudo ip route add 192.168.93.0/24 dev eth1 table table93
# sudo ip rule add from 192.168.93.5 lookup table93




sudo ip rule del from 192.168.197.71 table 197
sudo ip rule del from 192.168.34.128 table 34
sudo ip rule del from 192.168.34.22 table 34
sudo ip rule del from 192.168.93.5 table 93
sudo ip rule del from 192.168.93.13 table 93



sudo ip rule add from 192.168.197.71 table 197
sudo ip route add default via 192.168.197.157 dev eth2 table 197
sudo ip route add 192.168.197.0/24 dev eth2 table 197

sudo ip rule add from 192.168.111.71 table 111
sudo ip route add default via 192.168.111.156 dev eth2 table 111
sudo ip route add 192.168.111.0/24 dev eth2 table 111



sudo ip rule add from 192.168.34.128 table 34
sudo ip rule add from 192.168.34.22 table 34

sudo ip rule add from 192.168.34.128 table 34
sudo ip rule add from 192.168.34.22 table 34



#sudo ip route add default via 192.168.34.1 dev wlan0 table 34
#sudo ip route add 192.168.34.0/24 dev wlan0 table 34

# sudo ip route del default via 192.168.34.1 dev wlan0 table 34
# sudo ip route del 192.168.34.0/24 dev wlan0 table 34

sudo ip route add default via 192.168.34.1 dev eth0 table 34
sudo ip route add 192.168.34.0/24 dev eth0 table 34


sudo ip rule add from 192.168.93.5 table 93
sudo ip rule add from 192.168.93.13 table 93

sudo ip route add default via 192.168.93.1 dev wlan1 table 93
sudo ip route add 192.168.93.0/24 dev wlan1 table 93


sudo ip route del default via 192.168.93.1 dev eth1 table 93
sudo ip route del 192.168.93.0/24 dev eth1 table 93

sudo ip route add 192.168.93.0/24 dev eth1 table 93



sudo ip rule add from 192.168.12.37 table 12
sudo ip route add default via 192.168.12.1 dev wlan1 table 12
sudo ip route add 192.168.12.0/24 dev wlan1 table 12


sudo ip rule add from 192.168.0.5 table 150
sudo ip route add default via 192.168.0.1 dev wlan1 table 150
sudo ip route add 192.168.0.0/24 dev wlan1 table 150




sudo ip rule add from 192.168.34.128 table 134
sudo ip route add default via 192.168.34.1 dev wlan0 table 134
sudo ip route add 192.168.34.0/24 dev wlan0 table 134


sudo ip rule add from 192.168.34.50 table 134
sudo ip route add default via 192.168.34.1 dev wlan1 table 134
sudo ip route add 192.168.34.0/24 dev wlan1 table 134


sudo ip rule add from 192.168.93.3 table 193
sudo ip route add default via 192.168.93.1 dev wlan0 table 193
sudo ip route add 192.168.93.0/24 dev wlan0 table 193


sudo ip rule add from 192.168.34.153 table 234
sudo ip route add default via 192.168.34.1 dev wlan1 table 234
sudo ip route add 192.168.34.0/24 dev wlan1 table 234

sudo ip rule add from 192.168.0.41 table 1234
sudo ip route add default via 192.168.0.1 dev wlan0 table 1234
sudo ip route add 192.168.0.0/24 dev wlan0 table 1234


# 일단 최종
sudo ip rule add from 192.168.11.71 table 111
sudo ip route add default via 192.168.11.20 dev eth1 table 111
sudo ip route add 192.168.11.0/24 dev eth1 table 111


sudo ip rule add from 192.168.34.50 table 134
sudo ip route add default via 192.168.34.1 dev wlan1 table 134
sudo ip route add 192.168.34.0/24 dev wlan1 table 134


sudo ip rule add from 192.168.93.13 table 9393
sudo ip route add default via 192.168.93.1 dev wlan0 table 9393
sudo ip route add 192.168.93.0/24 dev wlan0 table 9393
