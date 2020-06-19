#!bin/bash
trash_dir=/home/`whoami`/.trash/
cd ${trash_dir}
if [ $? -ne 0 ]; then
#    echo `pwd`
    find ~/.trash/ -mtime +3 -exec 'rm' -rf {} \;       #找到回收站中修改日期大于3天的文件，执行真正的删除
#    echo "failed"
else
#    echo `pwd`
    find ./ -mtime +3 -exec 'rm' -rf {} \;       #找到回收站中修改日期大于3天的文件，执行真正的删除
#    echo "succeed"
fi

# find ./ -mtime +3 -exec 'rm' -rf {} \;       #找到回收站中修改日期大于3天的文件，执行真正的删除
# (注：rm被封装后，带引号的’rm’执行的是真正的删除)
