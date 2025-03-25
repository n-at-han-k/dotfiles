" Make sure to install vim-plug first
"
" then run :PlugInstall
" https://github.com/junegunn/vim-plug


call plug#begin()
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-lsp-settings'

Plug 'aklt/plantuml-syntax'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'previm/previm'
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
Plug 'rstacruz/vim-closer'
Plug 'mhinz/vim-startify'
Plug 'depuracao/vim-rdoc'
call plug#end()

let g:netrw_nogx = 1
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
let g:plantuml_previewer#plantuml_jar_path='/usr/share/plantuml/plantuml.jar'
let g:plantuml_previewer#debug_mode=1

let g:previm_open_cmd = 'firefox_esr '

"set ts=2 sw=2 et
"let g:indent_guides_start_level = 2
"let g:indent_guides_enable_on_vim_startup = 1


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
nmap <C-e> :Ex<CR>
nmap <C-t> :terminal<CR>

nmap <F3> :PrevimOpen<CR>
nmap <F5> :PrevimRefresh<CR>



""""
" LSP SETTINGS
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction


""""
" TAB COMPLETION
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
"If you prefer the enter key to always insert a new line (even if the popup menu is visible) then you can amend the above mapping as follows:
"inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() . "\<cr>" : "\<cr>"

