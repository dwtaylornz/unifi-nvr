# check if clean install - if so popluate directory with required files 
if [ ! -f /var/lib/unifi-video/system.properties ]; then
        echo ""
        echo "System Properties file NOT found - creating new install"
        # cp -R /tmp/unifi-video/* /var/lib/unifi-video/ 
        chown -R unifi-video:unifi-video /var/lib/unifi-video
        cd /usr/lib/unifi-video/ 
        rm data 
        ln -s /var/lib/unifi-video/ data
        # chown root:root /var/lib/unifi-video/videos
        echo ""
fi

#check if logs directory has anything in it? - if not set permissions on log dir 
if [ ! -f /var/log/unifi-video/server.log ]; then
        echo ""
        echo "Logs directory contain zero files - setting permissions"
        chown -R unifi-video:unifi-video /var/log/unifi-video
        echo ""
fi

# service mongodb start
service unifi-video start
tail -F /var/log/unifi-video/server.log
