echo ' -- IP Rule -- '
ip rule show
echo ' '
echo '-- Custom Table For Cellular Network (12) --'
ip route show table 12
echo ' '
echo '-- Custom Table For Wi-Fi Network 1 (34) --'
ip route show table 34
echo ' '
echo '-- Custom Table For Wi-Fi Network 2 (93) --'
ip route show table 93
echo ' '
echo '-- Default Routing Table --'
ip route