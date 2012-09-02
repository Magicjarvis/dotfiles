#!/bin/bash

# vim stuff
mkdir -p ~/.vim/autoload/
cd ~/.vim/autoload/
wget https://github.com/tpope/vim-pathogen/raw/master/autoload/pathogen.vim
cd -
mkdir ~/.vim/bundle
cd ~/.vim/bundle
git init
git submodule add git@github.com:flazz/vim-colorschemes.git
git submodule add https://github.com/Raimondi/delimitMate.git
cd -

