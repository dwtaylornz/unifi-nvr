FROM ubuntu
MAINTAINER dwtaylornz@gmail.com

# Install NVR
ADD install_nvr.sh /
RUN bash /install_nvr.sh

# Add NVR Start-up
ADD start_nvr.sh /
RUN chmod +x /start_nvr.sh

# Volumes
VOLUME /var/lib/unifi-video
VOLUME /var/log/unifi-video
VOLUME /usr/lib/unifi-video/data/videos

# Ports
EXPOSE 7442 7443 7445 7446 7447 7080 6666

# start NVR
CMD ["sh","/start_nvr.sh"]
