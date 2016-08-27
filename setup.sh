#!/bin/bash
rm $HOME/.bashrc
rm $HOME/.vimrc
rm $HOME/.profile
ln -s $PWD/.bashrc $HOME/.bashrc
ln -s $PWD/.vimrc $HOME/.vimrc
ln -s $PWD/.profile $HOME/.profile
ln -s $PWD/.vim $HOME/.vim
source $HOME/.profile
