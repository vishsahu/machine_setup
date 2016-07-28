source "$HOME/.bashrc"
source "$HOME/.vimrc"
export PS1="\t \u@\h:\w \n$ "
export EDITOR="vim"
export VMTREE=/dbc/pa-dbc1117/svishal/vdfs/bora
export PXEDIR=/dbc/pa-dbc1117/svishal/pxe-vdfs
export DBC_HOME=/dbc/pa-dbc1117/svishal
export PATH="$PATH:/mts/git/bin"
export PATH=$PATH:$HOME/bin:/build/apps/bin/
export BUILD_EXPORT=1
export NIMBUSDEPLOY="nimbus-esxdeploy --cpus 4 --nicType e1000e --memory 8192 --disk 31457280 --disk 31457280 --sasDisk 20971520 --sasDisk 20971520 --ssd 10485760 --ssd 10485760"
alias cddbc="cd $DBC_HOME"
alias cdw="cd $DBC_HOME/vdfs/bora/vdfs/"
alias cdt="cd $DBC_HOME/vdfs/bora/vdfs/tests"
alias cdp="cd $DBC_HOME/p4/bora/vdfs"
source ~/bin/vm-init
