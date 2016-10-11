#!/bin/bash
rm $HOME/.bashrc
rm $HOME/.vimrc
rm $HOME/.profile
ln -s $PWD/.bashrc $HOME/.bashrc
ln -s $PWD/.vimrc $HOME/.vimrc
ln -s $PWD/.profile $HOME/.profile
ln -s $PWD/.vim $HOME/.vim
ln -s $PWD/cpp_template.txt $HOME/cpp.template.txt
ln -s $PWD/c_template.txt $HOME/c_template.txt
source $HOME/.profile
