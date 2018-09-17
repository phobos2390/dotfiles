#!/bin/bash

mkdir ~/.dotfiles/
cp -r * ~/.dotfiles/
pushd ~/.dotfiles/
if [ -f ~/.bash_profile -a ! ~/.bash_profile.bck ]; then
mv ~/.bash_profile ~/.bash_profile.bck
fi
ln -s ~/.dotfiles/bash/bash_profile.symlink ~/.bash_profile
if [ -f ~/.bashrc -a ! ~/.bashrc.bck ]; then 
mv ~/.bashrc ~/.bash_profile.bck
fi
ln -s ~/.dotfiles/bash/bashrc.symlink ~/.bashrc
if [ -f ~/.vimrc -a ! ~/.vimrc.bck ]; then
mv ~/.vimrc ~/.vimrc.bck
fi
ln -s ~/.dotfiles/vim/vimrc.symlink ~/.vimrc
popd
