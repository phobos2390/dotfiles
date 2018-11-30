#!/bin/bash

if [ -d ~/.dotfiles ]; then
  mv ~/.dotfiles ~/.dotfiles.bck
fi
mkdir ~/.dotfiles/
cp -r * ~/.dotfiles/
pushd ~/.dotfiles/
if [ -f ~/.bash_profile -a ! -f ~/.bash_profile.bck ]; then
mv ~/.bash_profile ~/.bash_profile.bck
fi
ln -s ~/.dotfiles/bash/bash_profile.symlink ~/.bash_profile
if [ -f ~/.bashrc -a ! -f ~/.bashrc.bck ]; then 
mv ~/.bashrc ~/.bash_profile.bck
fi
ln -s ~/.dotfiles/bash/bashrc.symlink ~/.bashrc
if [ -f ~/.vimrc -a ! -f ~/.vimrc.bck ]; then
mv ~/.vimrc ~/.vimrc.bck
fi
ln -s ~/.dotfiles/vim/vimrc.symlink ~/.vimrc
if [ -f ~/.gitconfig -a ! -f ~/.gitconfig.bck ]; then
mv ~/.gitconfig ~/.gitconfig.bck
fi
ln -s ~/.dotfiles/git/gitconfig.symlink ~/.gitconfig
popd
