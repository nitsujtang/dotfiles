#!/bin/bash

# checks to see that there is a command line arg supplied
if [ "$#" -lt 1 ]; then
    echo "pls supply something to copy :-("
    exit 1
fi

# check if arg is dir or file
if [ -d $1 ]; then
    echo "updating dir $1..."
    rm -rf ~/dotfiles/$1
    cp -r $1 /home/nitsujtang/dotfiles
    echo "done"
elif [ -f $1 ]; then
    echo "updating file $1..."

    if [ -f ~/dotfiles/$1 ]; then
        rm ~/dotfiles/$1
    fi

    cp $1 /home/nitsujtang/dotfiles
    echo "done"
else
    echo "did not find anything"
fi

exit 0
