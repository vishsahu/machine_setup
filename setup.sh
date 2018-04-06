#!/bin/bash
declare -a names=("c_template.txt"
                  "cpp_template.txt"
                  "git-prompt.sh"
                  ".bashrc"
                  ".profile"
                  ".vimrc"
                  ".vim"
                  )

# stores all the exisiting files here
if ! [ -d $HOME/mconfig_backup ]; then
    mkdir $HOME/mconfig_backup
fi

for fname in "${names[@]}"
do
    # check if symlink is not present
    if ! [ -L $HOME/$fname ]; then
        # if existing file is directory or regular file
        if [ -f $HOME/$fname ] || [ -d $HOME/$fname ]; then
            mv $HOME/$fname $HOME/mconfig_backup
        fi
        ln -s $PWD/$fname $HOME/$fname
    fi
done

#source $HOME/.profile
