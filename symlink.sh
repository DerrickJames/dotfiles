#!/bin/bash

# Symlink all the dotfiles and .vim to ~/

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$" || exit; done 2>/dev/null &

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# aliases
ln -s ${BASEDIR}/.aliases ~/.aliases

# bash
ln -s ${BASEDIR}/.bash_profile ~/.bash_profile
ln -s ${BASEDIR}/.bash_prompt ~/.bash_prompt
ln -s ${BASEDIR}/.bashrc ~/.bashrc

#git
ln -s ${BASEDIR}/.gitconfig ~/.gitconfig

# vim
ln -s ${BASEDIR}/.vim ~
ln -s ${BASEDIR}/.vimrc ~/.vimrc

# tmux
ln -s ${BASEDIR}/.tmux.conf ~/.tmux.conf
