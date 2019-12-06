set -g -x fish_greeting ''
set -x WORK_DIR /home/vsahu 

# some commnad short-hands
alias l='ls -larth'
alias h='history'
alias c='clear'
alias py='python3'
alias vi='vim'

# useful shorthands
alias gl='git log --decorate'
alias gc='git checkout'
alias gb='git branch'
alias gs='git status'
alias gcp='git cherry-pick'
alias gri='git rebase -i'
alias l='ls -lart'

# office specific
# ==================
alias chrome='chromium-browser google-chrome --proxy-server="https://proxy-ip:proxy-port"'
alias dvl='dt vcluster list'
alias dvd='dt vcluster delete'
alias docker='sudo docker'

# path short-hands
alias cdwt='cd $HOME/wiki/tasks'
alias cdc='cd $WORK_DIR/work/tools/backup/dinostor/ndmpTest/bin'
alias cdw='cd $WORK_DIR/work'
alias cdw1='cd $WORK_DIR/work1'
alias cdo='cd $WORK_DIR/work/onefs'
alias cdd='cd $WORK_DIR/work/tech-doc/projects/lhotse/design'
alias cdl='cd $WORK_DIR/work/onefs/isilon/lib'
alias cdb='cd $WORK_DIR/work/onefs/isilon/bin'
alias cdt='cd $WORK_DIR/work/onefs/isilon/test/syncIQ'
alias pyt='cd $WORK_DIR/work/onefs/isilon/test-qa/tests/worm'
alias wlib='cd $WORK_DIR/work/onefs/isilon/test-qa/lib/qa/worm'

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
alias qavmd='ssh vsahu@qavm-d05.prod.sea1.west.isilon.com'
alias qavm='ssh vsahu@qavm01.prod.sea1.west.isilon.com'


function fish_prompt
	set_color normal
	# https://stackoverflow.com/questions/24581793/ps1-prompt-in-fish-friendly-interactive-shell-show-git-branch
	set -l git_branch (git branch 2>/dev/null | sed -n '/\* /s///p')
	echo -n (whoami)'@'(hostname)':'
	set_color $fish_color_cwd
	echo -n (prompt_pwd)
	set_color normal
	if [ "$git_branch" != "" ] 
		echo -n '['
		set_color purple
		echo -n "$git_branch"
		set_color normal
		echo -n ']'
	end
	echo -e '$\n'
end
