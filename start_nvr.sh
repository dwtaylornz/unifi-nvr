echo "--- START NVR ---" 

# check if clean install - if so popluate directory with required files 
if [ ! -f /usr/lib/unifi-video/data/system.properties ]; then
        echo "Data directory contains zero files - setting permissions"
        chown -R unifi-video:unifi-video /usr/lib/unifi-video/data
fi

#check if logs directory has anything in it? - if not set permissions on log dir 
if [ ! -f /usr/lib/unifi-video/logs/server.log ]; then
        echo "Logs directory contain zero files - setting permissions"
        chown -R unifi-video:unifi-video /var/log/unifi-video    
fi

echo "" 

# service mongodb start
service unifi-video start
tail -F /var/log/unifi-video/server.log
