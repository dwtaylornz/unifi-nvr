# download and install latest ubuntu package
wget -q -O unifi-video.deb https://dl.ubnt.com/firmwares/ufv/v3.8.0/unifi-video.Ubuntu16.04_amd64.v3.8.0.deb
dpkg -i unifi-video.deb
apt-get -f install -y

# remove symbolic links 
# cd /usr/lib/unifi-video
# rm data 
# rm logs 

# set start_nvr.sh executable 
chmod +x /start_nvr.sh

#clean up
rm unifi-video.deb
