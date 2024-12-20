" Make sure to install vim-plug first
"
" then run :PlugInstall
" https://github.com/junegunn/vim-plug


call plug#begin()
" List your plugins here
"Plug 'tpope/vim-sensible'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/seoul256.vim'
Plug 'https://github.com/junegunn/vim-easy-align.git'
Plug '907th/vim-auto-save'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'ryanoasis/vim-devicons' 
Plug 'christoomey/vim-tmux-navigator'
Plug 'vimwiki/vimwiki'
Plug 'ayu-theme/ayu-vim'
"Plug 'preservim/nerdtree' 
"Plug 'Xuyuanp/nerdtree-git-plugin' 
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 
"Plug 'scrooloose/nerdtree-project-plugin'


call plug#end()

" seoul256 (dark):
"  Range:   233 (darkest) ~ 239 (lightest)
"  Default: 237
let g:seoul256_background = 235
colo seoul256

"set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu

let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]

set syntax=on
set nocompatible
set encoding=UTF-8
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
"set number
set cc=+1,+2,+3
    
nmap <C-n> :set invnumber<CR>
nmap <C-f> :Files<CR>
