# ~/.bashrc: executed by bash(1) for non-login shells.

export PS1='\h:\w\$ '
umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

#
# Netkit tweaks
#

export TERM=xterm
alias grep='grep --color'
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

xorpsh() { 
   CMDLINE="su xorp -p -c 'xorpsh \"$1\"";
   while shift; do
      CMDLINE="$CMDLINE \"$1\"";
   done;
   CMDLINE="$CMDLINE'";
   eval $CMDLINE
}

