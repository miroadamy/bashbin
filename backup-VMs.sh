#!/bin/bash

. ~/bin/fnc-backup.sh
echo ------ `date "+%Y-%m-%d %H:%M:%S"`
sync2usb /Users/Shared/VM/ /Volumes/VMs-2011/VM-Latest
echo All good: ------ `date "+%Y-%m-%d %H:%M:%S"`
		
