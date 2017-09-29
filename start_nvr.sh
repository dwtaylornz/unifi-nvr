if [ ! -f /var/lib/unifi-video/system.properties ]; then
        echo "System Properties NOT found - creating new install"
        cp -R /tmp/unifi-video/* /var/lib/unifi-video/ 
fi

chown -R unifi-video:unifi-video /var/lib/unifi-video
chown root:root /var/lib/unifi-video/videos

service mongodb start
service unifi-video start
tail -F /var/log/unifi-video/server.log
