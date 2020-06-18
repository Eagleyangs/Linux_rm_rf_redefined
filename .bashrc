# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias l='ls -lrt'
alias lr='ls -lr'
alias la='ls -la'
alias lt='ls -lt'

alias g++11='g++ -g -Wall -std=c++11'
alias g++14='g++ -g -Wall -std=c++14'

alias v='vi'
alias v='vim'
alias cls='clear'

#alias rm='rm -i'
alias rm='~/.del.sh'
#alias `rm -rf`='mv -if'
alias cp='cp -i'
alias mv='mv -i'

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

alias l.='ls -d .* --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'

alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

# Enable gcc 8.3.1
source /opt/rh/devtoolset-8/enable

export CC=/opt/rh/devtoolset-8/root/usr/bin/gcc
export CPP=/opt/rh/devtoolset-8/root/usr/bin/cpp
export CXX=/opt/rh/devtoolset-8/root/usr/bin/c++
