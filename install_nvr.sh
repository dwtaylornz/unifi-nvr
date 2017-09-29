# update apt-get repositories and refresh system
apt-get update

# install pre-reqs
apt-get -f install -y wget apt-utils
apt-get -f install -y openjdk-8-jre-headless

# download and install latest ubuntu package
wget -q -O unifi-video.deb https://dl.ubnt.com/firmwares/ufv/v3.8.0/unifi-video.Ubuntu14.04_amd64.v3.8.0.deb
dpkg -i unifi-video.deb
apt-get -f install -y

# start and stop service
service mongodb start
service unifi-video start
service unifi-video stop 
service mongodb stop 

# create copy of db after initial install
mkdir /tmp/unifi-video
cp -R /var/lib/unifi-video/* /tmp/unifi-video
