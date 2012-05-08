#!/bin/bash

. ~/bin/fnc-backup.sh

function backup {
	if [ -e $2 ]
		then
			rsync -avr -e ssh --progress $1 $2
		else
			echo "There is no drive available: expected $2"
	fi
}


SUBVERSION_DIR=tkuser@luke:/home
BACKUP=/Volumes/Backup-2011/LUKE/RSYNC
DIRS="tkuser SHARED"


for dir in $DIRS
do
	if [ ! -e $BACKUP/$dir ]
		then
		echo "There is no drive/directory available: expected $BACKUP/$dir"
		exit 1
	fi
done

echo ------ `date "+%Y-%m-%d %H:%M:%S"`
echo -- Destination: `cat /Volumes/Backup-2011/LABEL`
echo Ready to create backup of $SUBVERSION_DIR/SHARED on LUKE into $BACKUP/SHARED
backup $SUBVERSION_DIR/SHARED $BACKUP/SHARED
echo ===== `date "+%Y-%m-%d %H:%M:%S"`
echo Ready to create snapshot of $SUBVERSION_DIR/tkuser on LUKE into $BACKUP/tkuser
sync2usb $SUBVERSION_DIR/tkuser $BACKUP/tkuser
echo The $SUBVERSION_DIR/$dir on LUKE rsynced into $BACKUP/$dir at `date +%Y-%m-%dT%H-%M`

echo ===== `date "+%Y-%m-%d %H:%M:%S"`
echo All good
 

