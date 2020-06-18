# Linux_rm_rf_redefined

.del.sh #删除文件到回收站
.clean.sh #清理三天前的回收站

Usage:
    vim /etc/bashrc or /home/`whoami`/.bashrc
    alias rm='sh /home/`whoami`/.del.sh'

    source /etc/bashrc or source /home/`whoami`/.bashrc

clean.sh
    crontab -e
    00 06 * * * sh /home/`whoami`/.clean.sh # 每天6点执行 后面的sh
    service crond restart  #重启crond服务使之生效
    crontab -l  #如果可以看到刚才添加的那段话，则证明添加成功

Notice:
    执行真正的删除需要使用 \rm或者'rm' 
    执行sh 需要可执行权限时 chmod a+x *.sh 或者 chmod 755 *.sh



Others:
1. .vimrc:
2. .bashrc