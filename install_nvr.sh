# download and install latest ubuntu package
wget -q -O unifi-video.deb https://dl.ubnt.com/firmwares/ufv/v3.8.0/unifi-video.Ubuntu14.04_amd64.v3.8.0.deb
dpkg -i unifi-video.deb
apt-get -f install -y

# create copy of db after initial install
# mkdir /tmp/unifi-video
# cp -R /var/lib/unifi-video/* /tmp/unifi-video

# set start_nvr.sh executable 
chmod +x /start_nvr.sh

#clean up
rm unifi-video.deb
