#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# https://github.com/airblade/vim-gitgutter
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/pack/airblade/start/vim-gutter
vim -u NONE -c "helptags vim-gitgutter/doc" -c q

# https://github.com/tpope/vim-surround
git clone https://tpope.io/vim/surround.git ~/.vim/pack/tpope/start/surround
vim -u NONE -c "helptags surround/doc" -c q
