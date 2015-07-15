#!/bin/bash

# restart samba
service samba restart

echo "URL: smb://$(ifconfig eth0 | grep -e 'inet' | grep -v 'inet6' | tr -s ' ' | cut -d' ' -f3 | cut -d':' -f2)/data"

cron -f
