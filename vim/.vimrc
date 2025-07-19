set nocompatible
" Make sure to install vim-plug first
"
" then run :PlugInstall
" https://github.com/junegunn/vim-plug
nnoremap <leader>ni :e $NOTES_DIR/index.md<CR>:cd $NOTES_DIR<CR>
nmap <C-n> :set invnumber<CR>
nmap <C-f> :Files<CR>
nmap <C-e> :Explore<CR>
nmap <C-t> :terminal<CR>
"nmap <C-3> :/\^\[\^#\]<CR>

let g:vim_ai_token_file_path = '~/.config/openai.token'
let g:vim_ai_roles_config_file = '~/.config/vim_ai_roles.ini'

" This prompt instructs model to work with syntax highlighting
let s:initial_chat_prompt =<< trim END
>>> system
You are an AI assistant with deep expertise in Ruby on Rails, Hotwire/StimulusJS, and Vanilla Javascript who is able to reason abstractly about software architecture, domain modeling, and framework internals. You:

• Think conceptually first: explore the “why” behind patterns (MVC, REST, service objects, domain-driven design)before offering code.  
• Surface trade‑offs: always articulate pros and cons of approaches (e.g., Active Record vs. ROM, monolith vs. microservices).  
• Guide to idiomatic Rails: recommend canonical conventions, built‑in features, and community‑endorsed gems.  
• Illustrate with clear, concise examples: show minimal, runnable code snippets annotated with comments.  
• Ask clarifying questions when requirements are vague, to ensure alignment on domain and constraints.  
• Stay up‑to‑date: reference Rails 7+ features (Zeitwerk loader, encrypted credentials, Hotwire/Turbo) and anticipate future evolutions.  
• Explain performance and security implications: from eager loading and N+1 queries to SQL injection and parameter sanitization.  
• Encourage test‑driven development and maintainable code: suggest RSpec, Minitest, FactoryBot, Fixtures, and continuous integration practices.  
• Adapt explanations to the user’s experience level: surface prerequisites, then dive gradually into advanced topics like custom railties, engine development, and Arel internals.  

When responding, lead with a high‑level conceptual overview, then progressively refine into concrete implementation guidance. Always aim for clarity, depth, and Rails idiomaticity.
END

" —————— complete ( :AI ) ——————
let g:vim_ai_complete = {
\  'options': {
\    'model': 'gpt-4',
\    "stream": 1,                
\    "temperature": 0.1,         
\    "max_completion_tokens": 0,
\    "initial_prompt": s:initial_chat_prompt,
\  },
\}

" —————— edit ( :AIEdit ) ——————
let g:vim_ai_edit = {
\  'options': {
\    'model': 'gpt-4',
\    'stream': 1,
\    'temperature': 0.1,
\    'max_completion_tokens': 0,
\    "initial_prompt": s:initial_chat_prompt,
\  },
\}

" —————— chat ( :AIChat ) ——————
let g:vim_ai_chat = {
\  'options': {
\    'model': 'gpt-4',
\    'stream': 1,
\    'temperature': 0.8,
\    'max_completion_tokens': 0,
\    "initial_prompt": s:initial_chat_prompt,
\  },
\}

nmap <F3> :PrevimOpen<CR>
nmap <F5> :PrevimRefresh<CR>
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

"set spell
let g:ruby_fold_lines_limit = 200
highlight Folded guibg=grey guifg=blue
highlight FoldColumn guibg=darkgrey guifg=white

let g:vim_ai_token_file_path = '~/.config/openai.token'

" MARKDOWN
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_new_list_item_indent = 1
let g:vim_markdown_auto_insert_bullets = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1

" PLUGINS
call plug#begin()
  Plug 'madox2/vim-ai'
  Plug 'tyru/open-browser.vim'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'tyru/open-browser-github.vim'
  Plug 'previm/previm'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

  "Plug 'vim-utils/vim-ruby-fold'
  Plug 'preservim/vim-markdown'
  Plug 'vim-ruby/vim-ruby'
  Plug 'noprompt/vim-yardoc'

  Plug 'aklt/plantuml-syntax'
  Plug 'ryanoasis/vim-devicons'
  Plug 'junegunn/seoul256.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'edkolev/tmuxline.vim'

  Plug '907th/vim-auto-save'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'ryanoasis/vim-devicons' 
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'ayu-theme/ayu-vim'

  Plug 'mhinz/vim-startify'
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

" SNIPPETS
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
