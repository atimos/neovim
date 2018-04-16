#!/usr/bin/env bash
REPO=`pwd`
VIM_CONFIG=${XDG_CONFIG_HOME-$HOME/.config}/nvim

mkdir -p $VIM_CONFIG
cp $REPO/init.vim $VIM_CONFIG/init.vim
cp -r $REPO/config $VIM_CONFIG/

echo "curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh"
echo "sh ./installer.sh ~/.local/share/dein/"
echo "# install php msgpack extension"
