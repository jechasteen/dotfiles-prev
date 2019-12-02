#!/bin/env bash

git clone --bare https://github.com/jechasteen/dotfiles.git $HOME/.cfg

function config {
    /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}

mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
        echo "Checked out dotfiles.";
else
        echo "This script is only for use on a fresh system."
fi

config checkout
config config status.showUntrackedFiles no
