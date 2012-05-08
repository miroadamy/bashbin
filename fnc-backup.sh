function sync2usb {
	if [ -e $2 ]
		then
			echo ------ `date "+%Y-%m-%d %H:%M:%S"`
			echo "About to sync $1 to $2"
			echo "The size: `du -sh $1`"
			rsync -aur --delete --progress --exclude-from '/Users/miro/bin/rsync-exclude-list.txt' $1 $2 
			echo ====== `date "+%Y-%m-%d %H:%M:%S"`
		else
			echo "There is no drive available: expected $2"
	fi
}

function copy2usb {
	if [ -e $2 ]
		then
			echo "About to copy $1 to $2"
			echo "The size: `du -sh $1`"
			rsync -aur --progress --exclude-from '/Users/miro/bin/rsync-exclude-list.txt' $1 $2
		else
			echo "There is no drive available: expected $2"
	fi
}


