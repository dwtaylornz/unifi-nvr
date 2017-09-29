# check if clean install - if so popluate directory with required files 
if [ ! -f /var/lib/unifi-video/system.properties ]; then
        echo ""
        echo "System Properties file NOT found - creating new install"
        cp -R /tmp/unifi-video/* /var/lib/unifi-video/ 
        chown -R unifi-video:unifi-video /var/lib/unifi-video
        chown -R unifi-video:unifi-video /var/log/unifi-video
        # chown root:root /var/lib/unifi-video/videos
        echo ""
fi

# service mongodb start
service unifi-video start
tail -F /var/log/unifi-video/server.log
