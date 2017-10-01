# unifi-nvr
Ubiquiti UniFi-Video-Controller (NVR)

# Setup
This container requires the following two persistant data directories mapped;

/var/lib/unifi-video/ -> your host "data" location
/var/log/unifi-video/ -> your host "log" location

# Troubleshooting
UNRAID - If you have issue with MongoDB continually restarting please check your data mapping. I have seen issues where user shares (i.e. appdata) do not work correctly. Please try direct to a single disk or to cache drive to ensure smooth operation.
