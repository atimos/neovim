#!/usr/bin/env bash
REPO=`pwd`
VIM_CONFIG=${XDG_CONFIG_HOME-$HOME/.config}/nvim

mkdir -p $VIM_CONFIG
cp $REPO/init.vim $VIM_CONFIG/init.vim
cp -r $REPO/config $VIM_CONFIG/
