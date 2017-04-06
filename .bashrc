HISTSIZE=1000
#export PS1="\t \u@\h:\w$$(__git_ps1)\$\n"
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$$(__git_ps1)\$\n'
export PATH=/media/vishal/Windows/FUNZONE/stdy/async_systems/DistAlgo-1.0.0b17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/mts/git/bin:/home/vishal/bin:/build/apps/bin

# commnad short-hands
alias l='ls -larth'
alias h='history'
alias c='clear'
alias open='xdg-open'
alias vim='gvim'
alias py='python3'

# path short-hands
alias cdg='cd /home/vishal/git'
alias cds='cd /media/vishal/Windows/FUNZONE/stdy'
alias cdw='cd ~/work'
alias cdl='cd ~/work/onefs/isilon/lib'
alias cdb='cd ~/work/onefs/isilon/bin'

# login short-hands
alias workemc='ssh vsahu@10.28.107.241'

