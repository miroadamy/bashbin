#!/bin/bash

. ~/bin/fnc-backup.sh
echo ------ `date "+%Y-%m-%d %H:%M:%S"`
echo -- Destination: `cat /Volumes/Backup-2011/LABEL`
sync2usb /Users/Shared /Volumes/Backup-2011/RSYNC/Radegast-Shared
echo ------ `date "+%Y-%m-%d %H:%M:%S"`		
