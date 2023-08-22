set number
set expandtab

syntax on

set encoding=utf-8
set fileencoding=utf-8

" Vundle settings.
" https://github.com/gmarik/Vundle.vim
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'gmarik/Vundle.vim'
Plugin 'itchyny/lightline.vim'

call vundle#end()
filetype plugin indent on

set laststatus=2
set noshowmode
