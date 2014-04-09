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

# retornar após 1 min
find $DEST -maxdepth 1 -type d -mmin +1 -exec echo {} \;

# apagar após 60 dias
find $DEST -maxdepth 1 -type d -mtime +60 -exec rm -rf {} \;

echo
echo "------------------------------------------------------"
echo
echo
