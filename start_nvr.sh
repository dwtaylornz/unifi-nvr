echo "" 
echo "--- START NVR ---" 

# check if clean install - if so popluate directory with required files 
if [ ! -f /var/lib/unifi-video/system.properties ]; then
        echo "Data directory contains zero files - setting permissions"
        chown -R unifi-video:unifi-video /var/lib/unifi-video
fi

#check if logs directory has anything in it? - if not set permissions on log dir 
if [ ! -f /var/log/unifi-video/server.log ]; then
        echo "Logs directory contains zero files - setting permissions"
        chown -R unifi-video:unifi-video /var/log/unifi-video    
fi

echo "" 

# service mongodb start
# echo "Sleeping for 30 seconds..." 
# sleep 30
service unifi-video start
tail -F /var/log/unifi-video/server.log
