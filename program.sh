#!/bin/bash

. ./config.sh --source-only

frf () {
	#rm -rf $1
	echo $1
	return $1
}

echo "week - $1 | year - $4 | month - $3 | day - $2"
echo

rsync -avz --backup-dir=DIR $SOURCE $DEST"$4$3$2"

echo

# PRINT FOLDER WITH MORE THAN x DAYS
echo find $DEST -maxdepth 1 -type d -mmin +$STOREDAYS -not -iname $BACKUPFOLDER -exec echo {} \;

# DELETE AFTER x DAYS
echo find $DEST -maxdepth 1 -type d -mtime +$STOREDAYS -not -iname $BACKUPFOLDER -exec rm -rf {} \;

echo
echo "------------------------------------------------------"
echo
echo

# send an e-mail
#(
#	echo helo incograf.com;
#	sleep 2;
#	echo mail from:carlossantos@incograf.com;
#	sleep 2;
#	echo rcpt to:carlossantos@incograf.net;
#	sleep 2;
#	echo data;
#	sleep 2;
#	echo subject: subject;
#	sleep 2;
#	echo .;
#	sleep 2;
#	echo exit
#) | telnet incograf.com 25
