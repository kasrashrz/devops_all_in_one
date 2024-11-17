#!/bin/bash
# Backup a directory and store it in a backup directory with a timestamp
#SOURCE="/home/invoker/Desktop/"
DEST="/home/invoker/Desktop/devops/LPIC/useful_bash/backup"
SOURCE=$1
if  [ -z "${1+x}" ]; then SOURCE="/home/invoker/Desktop/"; else echo "Program about to start";fi
echo "SOURCE is $SOURCE"
TIMESTAMP=$(date "+%Y-%m-%d-%H-%M-%S")
#echo $TIMESTAMP
sudo tar -czvf $DEST/backup_$TIMESTAMP.tar.tgz $SOURCE
echo "Backup completed: $DEST/backup_$TIMESTAMP.tar.gz"
