if [ ! -f /usr/lib/unifi-video/system.properties ]; then
        echo ""
        echo "System Properties NOT found - creating new install"
        cp -R /tmp/unifi-video/* /usr/lib/unifi-video/ 
        echo ""
fi

# chown -R unifi-video:unifi-video /var/lib/unifi-video
# chown root:root /var/lib/unifi-video/videos

service mongodb start
service unifi-video start
tail -F /var/log/unifi-video/server.log
