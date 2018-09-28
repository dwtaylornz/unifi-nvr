# Ubiquiti UniFi-Video-Controller (NVR) -- Docker Container
Ubuntu 16.04, UniFi-Video-Controller 3.9.9

# Setup
This container requires the following two persistant data directories mapped;

/var/lib/unifi-video/ -> your host "data" location

/var/log/unifi-video/ -> your host "log" location

# Troubleshooting

UNRAID - If you have issue with MongoDB continually restarting please check your data mapping. I have seen issues where user shares do not work correctly. Please try mapping direct to a single disk or to cache drive to ensure smooth operation.

i.e. instead of /mnt/user/usershare/nvr/data

use either /mnt/cache/usershare/nvr/data

or /mnt/disk1/usershare/nvr/data
