sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -z
new_mac=$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//') 
sudo ifconfig en0 lladdr $new_mac 
sudo ifconfig en0 ether $new_mac
