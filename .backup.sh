#!/bin/bash
#对Product目录进行备份，并记录日志

BACK=/home/`whoami`/Backup
DATE=`date +%Y%m%d`
DAYS=15

cd ~

if [ ! -d ${BACK} ]; then
    mkdir -p ${BACK}
fi

tar -zcf ${BACK}/Backup_code_${DATE}.tar.gz code

if [ ! -d ${BACK} ]; then
    find ${BACK} -name "Backup_code_*" -type f -mtime +${DAYS} -exec rm {} \;
fi
