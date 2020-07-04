#!/bin/bash
# Description: 替换rm命令,不是删除文件,而是移动文件

#TMP_DIR="/tmp/"

#mv $@ $TMP_DIR

trash_dir=/home/yangqj/.trash/`date +%Y%m%d`      #自己创建的文件夹的路径

if [ ! -d ${trash_dir} ] ;then
    mkdir -p ${trash_dir}
fi

for i in $*
do
    suffix=`date "+%H%M%S"`
    if [ ! -d "${i}" ]&&[ ! -f "${i}" ];then    #首先判断是否是合法的文件或者文件夹
        if [ "${i}" != "-rf" ];then     #这里对-rf进行处理，因为mv指令后面没有-rf参数 重定义 rm -rf
           echo "[${i}] do not exist"
        fi
    else
        file_name=`basename $i`   #取得文件名称  
        mv ${i} ${trash_dir}/${file_name}_${suffix}_${RANDOM} 
        echo "[${i}] delete completed"  
    fi
done
