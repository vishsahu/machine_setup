HISTSIZE=1000
#export PS1="\t \u@\h:\w$$(__git_ps1)\$\n"
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$$(__git_ps1)\$\n'
#export PATH=$HOME/work/tools/backup/dinostor/ndmpTest/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
#export LD_LIBRARY_PATH=/usr/local/lib
export CSCOPE_EDITOR=vim
export EDITOR=vim
export WORK_DIR=/home/vsahu

source $HOME/git-prompt.sh

# commnad short-hands
alias l='ls -larth'
alias h='history'
alias c='clear'
alias py='python3'
alias vi='vim'

# useful shorthands
alias gc='git checkout'
alias gb='git branch'
alias gs='git status'
alias dvl='dt vcluster list'
alias dvd='dt vcluster delete'
alias docker='sudo docker'
alias dt='dt --api-server ducttape-api.prod.sea1.west.isilon.com'

# path short-hands
alias cdc='cd $WORK_DIR/work/tools/backup/dinostor/ndmpTest/bin'
alias cdw='cd $WORK_DIR/work'
alias cdo='cd $WORK_DIR/work/onefs'
alias cdl='cd $WORK_DIR/work/onefs/isilon/lib'
alias cdb='cd $WORK_DIR/work/onefs/isilon/bin'
alias cdt='cd $WORK_DIR/work/onefs/isilon/test/syncIQ'

# remote login aliases
alias rdsea='ssh vsahu@remotedev04.prod.sea1.west.isilon.com -X'
alias rddur='ssh vsahu@remotedev05.prod.rdu1.west.isilon.com -X'
alias vc100='ssh vsahu@10.25.70.118 -X'
alias c1='ssh root@10.25.71.39'
alias c2='ssh root@10.25.71.40'
alias c3='ssh root@10.25.71.41'
alias home='ssh vishal@10.13.41.37'
alias work='ssh vsahu@10.203.107.15'
alias esxvm='ssh vsahu@10.28.51.101 -Y'
alias ducttape='ssh ducttape.sea1.west.isilon.com'
alias qavm='ssh vsahu@qavm01.prod.sea1.west.isilon.com'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
