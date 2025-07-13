#!/bin/bash
# Clean apt cache
apt-get clean
# Remove orphaned packages
apt-get autoremove -y
# Truncate log files
find /var/log -type f -name "*.log" -exec truncate -s 0 {} \;
# Delete old files in /tmp
find /tmp -type f -atime +10 -delete
# Delete old files in /var/tmp
find /var/tmp -type f -atime +10 -delete
# Find and delete core dump files
find / -type f -name "core" -delete
# Remove unused docker images, containers, and volumes (if you use D>
docker system prune -af
