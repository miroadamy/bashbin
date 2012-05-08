#!/bin/bash

. ~/bin/fnc-backup.sh
echo ------ `date "+%Y-%m-%d %H:%M:%S"`
copy2usb /Users/Shared/VM/ /Volumes/VMs-2011/VM-Latest
echo All good: ------ `date "+%Y-%m-%d %H:%M:%S"`
		
