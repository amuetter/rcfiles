#!/bin/bash

# installation script for pathogen VIM plugins

if [ ! -d "~/.vim/bundle" ]; then
 mkdir -p ~/.vim/bundle
fi

if [ ! -d "~/.vim/autoload" ]; then
 mkdir -p ~/.vim/autoload
fi

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle

git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/vim-scripts/wombat256.vim
git clone https://github.com/vim-airline/vim-airline

cd ~

ln -s ./rcfiles/.vimrc .vimrc
