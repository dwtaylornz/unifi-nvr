# update apt-get repositories and refresh system
apt-get update

# install pre-reqs
apt-get -f install -y wget apt-utils
apt-get -f install -y openjdk-8-jre-headless

# download and install latest ubuntu package
wget -q -O unifi-video.deb https://dl.ubnt.com/firmwares/ufv/v3.8.0/unifi-video.Ubuntu14.04_amd64.$
dpkg -i unifi-video.deb
apt-get -f install -y
