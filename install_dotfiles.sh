#!/bin/sh

# install main config files
for dotfile in .*
do
    if [ -f $dotfile ]
    then
        # check if dotfile already exists in home dir
        if [ -f ~/$dotfile ] || [ -L ~/$dotfile ]
        then
            rm ~/$dotfile
        fi
        # create soft link from home dir to here
        ln -sv $(pwd)/$dotfile ~/$dotfile
    fi
done