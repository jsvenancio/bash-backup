bash-backup
===========

This small application can use rsync to backup the folders specified by the user.

## basis functions
* copies of files present in SOURCE folder
* check modified files to more than 00:01:00
* erases the backup folder with modifications to more than 60 day
* no network backup support

## HOW TO CONFIG
* open config.sh width eg.: gedit
* set SOURCE var
* ser DEST (destiny) var

## HOW TO RUN
* open terminal
* go to the bash-backup directory
* run "sh run.sh"

## REQUIREMENTS
* mailutils
```bash
sudo apt-get install mailutils
```


![alt text](https://github.com/NexuS-Pt/bash-backup/blob/master/System_monitor_Activity.png?raw=true  "image of system monitor from linux mint kde")
