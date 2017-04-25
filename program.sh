#!/bin/bash

. ./config.sh --source-only

frf () {
	#rm -rf $1
	echo $1
	return $1
}

#echo "week - $1 | year - $4 | month - $3 | day - $2"
#Below is just a suggestion to get the date from the system in the same format you've set above
date +'%W %Y %m %d'
echo

#rsync -avz --backup-dir=DIR $SOURCE $DEST"$4$3$2"
rsync -avz --backup-dir=DIR $SOURCE $DEST`date +%Y%m%d`

echo

# PRINT FOLDER WITH MORE THAN x DAYS
find $DEST -maxdepth 1 -type d -mtime +$STOREDAYS -not -iname $BACKUPFOLDER -exec echo {} \;

# DELETE AFTER x DAYS
find $DEST -maxdepth 1 -type d -mtime +$STOREDAYS -not -iname $BACKUPFOLDER -exec rm -rf {} \;

echo
echo "------------------------------------------------------"
echo
echo

echo "Here put the message" | mail -s "Here put the Subject" email@domain.ext
