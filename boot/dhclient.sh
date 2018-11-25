#
# Reconnect to network
#
# You need to overwrite 'sudo vim /etc/rc.local' and add this line
# 'sh [this root]/dhclient.sh'
#

sudo dhclient eth0
sudo dhclient wlan0
