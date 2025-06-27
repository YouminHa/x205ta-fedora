#!/bin/sh
cd $(dirname $0)

# copy all files to $HOME
cp -rT home $HOME

# font cache update
fc-cache -f -v

# set user dir names to english
sudo dnf install xdg-user-dirs
cp ~/.config/user-dirs.dirs{,.bak}
LANG=en_US.UTF-8 xdg-user-dirs-update --force

