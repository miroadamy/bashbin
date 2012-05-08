#!/bin/bash
function backup {
	if [ -e $2 ]
		then
			rsync -au --progress $1 $2
		else
			echo "There is no drive available: expected $2"
	fi
}


SUBVERSION_DIR=/home/tkuser/SUBVERSION_REPOSITORIES
SNAP=subversion-snapshot-`date +%Y-%m-%dT%H-%M`.tar.gz
SNAPSHOT=/home/tkuser/$SNAP
echo Ready to create snapshot $SNAPSHOT of $SUBVERSION_DIR on LUKE
ssh tkuser@LUKE tar -cvzf $SNAPSHOT $SUBVERSION_DIR
echo Done, copy to $SNAPSHOT
scp tkuser@LUKE:$SNAPSHOT ~/tmp/$SNAP
echo Copied, see ~/tmp/$SNAP; removing remote snapshot
ssh tkuser@LUKE rm $SNAPSHOT
echo Now save it to external disk
backup ~/tmp/$SNAP /Volumes/Backup-2011/LUKE
echo All good
 

