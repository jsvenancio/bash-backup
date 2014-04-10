#!/bin/bash

. ./config.sh --source-only

: 'Creating variables to store local date'
WEEK="$(date +'%V')"
DAY="$(date +'%d')"
MONTH="$(date +'%m')"
YEAR="$(date +'%Y')"

sh program.sh $WEEK $DAY $MONTH $YEAR >> $DEST$YEAR$MONTH$DAY.txt
