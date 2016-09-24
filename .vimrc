set nocompatible
filetype on
filetype plugin on
filetype plugin indent on
syntax on

" Rebind <Leader> key from \ to , so that it is closer to n, m, b and l
let mapleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugin for Git Wrapper
Plugin 'tpope/vim-fugitive'

" l9 is a Vim-script library, which provides some utility functions
Plugin 'L9'

" NerdCommenter for smart commenting
Plugin 'The-NERD-Commenter'

" Needed for autocompleting
Plugin 'AutoComplPop'

" Needed for yaml formating
Plugin 'yaml.vim'

" Shows statuslins at the bottom
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" Source code file browser
Bundle 'scrooloose/nerdtree'

" pyflakes and pep8 rope is turned off for jedi-vim
Bundle 'klen/python-mode'

" Python tab autocomplete
Bundle 'rkulla/pydiction'

" Python Autocompletion
Bundle 'davidhalter/jedi-vim'

" Used for Code Walk
Bundle 'majutsushi/tagbar'

" automatic closing of quotes, parenthesis, brackets
Bundle 'raimondi/delimitmate'

" highlight whitespace
Bundle 'ntpeters/vim-better-whitespace'

" molokai color scheme
Plugin 'tomasr/molokai'

call vundle#end()

" To ignore plugin indent changes, instead use:

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle
" non-Plugin stuff

" Powerline setup
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set termencoding=utf-8
set laststatus=2

" Python-mode
" Keys
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)

" Deactivate rope so that Jedi-vim is used for autocomplete
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"

" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" Don't autofold code
let g:pymode_folding = 0

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
" let g:pymode_syntax_indent_errors = g:pymode_syntax_all
" let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pydiction_location = '/home/araman/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 3
let g:pymode_motion = 1

" automatically get rid of trailing spaces
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" NERDTreeToggle mapped Key
map <F2> :NERDTreeToggle<CR>

" TagbarToggle mapped Key
nmap <F3> :TagbarToggle<CR>

" NerdCommenter for Python
let g:NERDSpaceDelims = 1

" NerdTreeignore pyc
let NERDTreeIgnore=['\.pyc$']

" Quicksave command
noremap <C-D> :update<CR>
vnoremap <C-D> <C-C>:update<CR>
inoremap <C-D> <C-O>:update<CR>

" Locationlist movement
noremap <silent>  [q :lprevious<CR>
vnoremap <silent> [q :lprevious<CR>
inoremap <silent> [q :lprevious<CR>

noremap <silent>  ]q :lnext<CR>
vnoremap <silent> ]q :lnext<CR>
inoremap <silent> ]q :lnext<CR>

" easier moving between tabs
map <leader>m <esc>:tabprevious<CR>
map <leader>. <esc>:tabnext<CR>

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>

" Use <leader>t to toggle PymodeLintToggle
nmap <leader>t :PymodeLintToggle<CR>

" Shortcut for tabs
ca t tabnew

"split window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-N> :nohl<CR>
vnoremap <C-Q> :nohl<CR>
inoremap <C-Q> :nohl<CR>

" prefer spaces to tabs
set tabstop=4
set shiftwidth=4
set expandtab
set t_Co=256
set term=xterm-256color
set autoindent
set smartindent
set number
set title
set showmatch
"set default colorscheme
colorscheme molokai

" automatically change window's cwd to file's dir
set autochdir

" Useful settings
set history=1000
set undolevels=1000

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files
set nobackup
set nowritebackup
set noswapfile

" more subtle popup colors
if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold
endif
