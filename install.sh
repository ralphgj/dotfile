#!/bin/bash

main() {
  VIM_BUNDLE=~/.vim/bundle
  if [ ! -d "$VIM_BUNDLE" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  fi
  if [ $? == 0 ]; then
    if [ -f "~/.vimrc" ]; then
      mv ~/.vimrc ~/.vimrc.orig
    fi
    if [ -f "~/.vimrc.bundles" ]; then
      mv ~/.vimrc ~/.vimrc.bundles.orig
    fi
    cp vimrc ~/.vimrc && cp vimrc.bundles ~/.vimrc.bundles
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  fi
  OH_MY_ZSH_THEME=~/.oh-my-zsh/themes
  if [ -d "$OH_MY_ZSH_THEME" ]; then
    cp gitster.zsh-theme $OH_MY_ZSH_THEME/
  fi
}

main
