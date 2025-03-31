set nocompatible
" Make sure to install vim-plug first
"
" then run :PlugInstall
" https://github.com/junegunn/vim-plug
nnoremap <leader>ni :e $NOTES_DIR/index.md<CR>:cd $NOTES_DIR<CR>
nmap <C-n> :set invnumber<CR>
nmap <C-f> :Files<CR>
nmap <C-e> :Ex<CR>
nmap <C-t> :terminal<CR>

nmap <F3> :PrevimOpen<CR>
nmap <F5> :PrevimRefresh<CR>
nmap <F2> :Copilot panel<CR>
nmap <F1> :Xtract<CR>
nmap <F7> :IndentGuidesToggle<CR>

let g:netrw_nogx = 1
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
let g:previm_open_cmd = 'firefox_esr '

"let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=grey     ctermbg=237
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=239

filetype on
autocmd BufRead,BufNewFile *.mab set filetype=ruby

set spell
let g:ruby_fold_lines_limit = 200
highlight Folded guibg=grey guifg=blue
highlight FoldColumn guibg=darkgrey guifg=white


"#" Enable spelunker.vim. (default: 1)
"#" 1: enable
"#" 0: disable
"#let g:enable_spelunker_vim = 1
"#" Enable spelunker.vim on readonly files or buffer. (default: 0)
"#" 1: enable
"#" 0: disable
"#let g:enable_spelunker_vim_on_readonly = 0
"#" Check spelling for words longer than set characters. (default: 4)
"#let g:spelunker_target_min_char_len = 4
"#" Max amount of word suggestions. (default: 15)
"#let g:spelunker_max_suggest_words = 15
"#" Max amount of highlighted words in buffer. (default: 100)
"#let g:spelunker_max_hi_words_each_buf = 100
"#" Spellcheck type: (default: 1)
"#" 1: File is checked for spelling mistakes when opening and saving. This
"#" may take a bit of time on large files.
"#" 2: Spellcheck displayed words in buffer. Fast and dynamic. The waiting time
"#" depends on the setting of CursorHold `set updatetime=1000`.
"#let g:spelunker_check_type = 1
"#" Highlight type: (default: 1)
"#" 1: Highlight all types (SpellBad, SpellCap, SpellRare, SpellLocal).
"#" 2: Highlight only SpellBad.
"#" FYI: https://vim-jp.org/vimdoc-en/spell.html#spell-quickstart
"#let g:spelunker_highlight_type = 1
"#" Option to disable word checking.
"#" Disable URI checking. (default: 0)
"#let g:spelunker_disable_uri_checking = 1
"#" Disable email-like words checking. (default: 0)
"#" NOTE: Spell checking is also disabled for JAVA annotations.
"#let g:spelunker_disable_account_name_checking = 1
"#" Disable acronym checking. (default: 0)
"#let g:spelunker_disable_acronym_checking = 1
"#" Disable checking words in backtick/backquote. (default: 0)
"#let g:spelunker_disable_backquoted_checking = 1
"#" Disable default autogroup. (default: 0)
"#let g:spelunker_disable_auto_group = 1
"#" Create own custom autogroup to enable spelunker.vim for specific filetypes.
"#augroup spelunker
"#  autocmd!
"#  " Setting for g:spelunker_check_type = 1:
"#  autocmd BufWinEnter,BufWritePost *.vim,*.js,*.jsx,*.json,*.md call spelunker#check()
"#  " Setting for g:spelunker_check_type = 2:
"#  autocmd CursorHold *.vim,*.js,*.jsx,*.json,*.md call spelunker#check_displayed_words()
"#augroup END
"#" Override highlight group name of incorrectly spelled words. (default:
"#" 'SpelunkerSpellBad')
"#let g:spelunker_spell_bad_group = 'SpelunkerSpellBad'
"#" Override highlight group name of complex or compound words. (default:
"#" 'SpelunkerComplexOrCompoundWord')
"#let g:spelunker_complex_or_compound_word_group = 'SpelunkerComplexOrCompoundWord'
"#" Override highlight setting.
"#highlight SpelunkerSpellBad cterm=underline ctermfg=247 gui=underline guifg=#9e9e9e
"#highlight SpelunkerComplexOrCompoundWord cterm=underline ctermfg=NONE gui=underline guifg=NONE


" Enable folding.
let g:vim_markdown_folding_disabled = 0
" Fold heading in with the contents.
let g:vim_markdown_folding_style_pythonic = 1
" Don't use the shipped key bindings.
"let g:vim_markdown_no_default_key_mappings = 1
" Autoshrink TOCs.
"let g:vim_markdown_toc_autofit = 1
" Indentation for new lists. We don't insert bullets as it doesn't play
" nicely with `gq` formatting. It relies on a hack of treating bullets
" as comment characters.
" See https://github.com/plasticboy/vim-markdown/issues/232
let g:vim_markdown_new_list_item_indent = 1
let g:vim_markdown_auto_insert_bullets = 1
" Filetype names and aliases for fenced code blocks.
"let g:vim_markdown_fenced_languages = ['php', 'py=python', 'js=javascript', 'bash=sh', 'viml=vim']
" Highlight front matter (useful for Hugo posts).
"let g:vim_markdown_toml_frontmatter = 1
"let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_frontmatter = 1
" Format strike-through text (wrapped in `~~`).
let g:vim_markdown_strikethrough = 1

call plug#begin()
"Plug 'kamykn/spelunker.vim'
Plug 'tyru/open-browser.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tyru/open-browser-github.vim'
Plug 'vim-utils/vim-ruby-fold'
Plug 'wolandark/vim-ez-emoji'
Plug 'sheerun/vim-polyglot'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'vim-ruby/vim-ruby'
Plug 'rstacruz/vim-xtract'
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'
"Plug 'mattn/vim-lsp-settings'
"Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }

"I can't use ultisnips as I don't have python set up properly
"for my vim installation.
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'yaegassy/coc-ruby-syntax-tree', {'do': 'yarn install --frozen-lockfile'}
Plug 'noprompt/vim-yardoc'

Plug 'aklt/plantuml-syntax'
"Plug 'xolox/vim-notes'
"Plug 'xolox/vim-misc'
Plug 'previm/previm'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/seoul256.vim'
"Plug 'https://github.com/junegunn/vim-easy-align.git'
Plug '907th/vim-auto-save'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'ryanoasis/vim-devicons' 
Plug 'christoomey/vim-tmux-navigator'
Plug 'ayu-theme/ayu-vim'
Plug 'mhinz/vim-startify'
call plug#end()



"set ts=2 sw=2 et
"let g:indent_guides_start_level = 2
"let g:indent_guides_enable_on_vim_startup = 1

augroup JsonToJsonc
      autocmd! FileType json set filetype=jsonc
augroup END


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

    

let g:claude_map_implement = "<Leader>ci"
let g:claude_map_open_chat = "<Leader>cc"
let g:claude_map_send_chat_message = "<C-]>"
let g:claude_map_cancel_response = "<Leader>cx"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

""""""""""""""""""""""""""""""2
" COC
"
" https://raw.githubusercontent.com/neoclide/coc.nvim/master/doc/coc-example-config.vim

" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent><nowait> [g <Plug>(coc-diagnostic-prev)
nmap <silent><nowait> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent><nowait> gd <Plug>(coc-definition)
nmap <silent><nowait> gy <Plug>(coc-type-definition)
nmap <silent><nowait> gi <Plug>(coc-implementation)
nmap <silent><nowait> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

