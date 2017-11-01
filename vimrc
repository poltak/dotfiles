" auto reload .vimrc when changed, this avoids reopening vim
autocmd! bufwritepost .vimrc source %

set nocompatible              " be iMproved, required
filetype on                   " required


" Plugins
" ----------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhartington/nvim-typescript', { 'for': 'typescript' }
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }
"Plugin 'scrooloose/nerdtree'
"Plugin 'ntpeters/vim-better-whitespace'
"Plugin 'Raimondi/delimitMate'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'scrooloose/syntastic'
"Plugin 'majutsushi/tagbar'
"Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'elzr/vim-json'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'jelera/vim-javascript-syntax'
"Plugin 'jdkanani/vim-material-theme'
"Plugin 'hkupty/nvimux'
"Plugin 'kassio/neoterm'
call plug#end()

""
" ------------------------------------------------------------
"
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_debug = 1
let g:deoplete#enable_profile = 1

" = = = = MISC SETTINGS = = = =

" set UTF-8 encoding
"set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" commenting
set comments=sl:/*,mb:\ *,elx:\ */
set wildmode=longest:full,list
set wildmenu
set t_Co=256

" theme settings
syntax enable
set background=dark
"if !has('gui_running')
    "colorscheme dracula
"else
    "colorscheme material-theme
"endif

"tabs and spaces
set shiftwidth=2	"1 tab == 2 spaces
set tabstop=2		"<TAB> == 2 spaces
set softtabstop=2	"<TAB> and backspace
set expandtab
set smarttab		"smart tab
set autoindent		"set auto indent
set smartindent		"set smart indent
set copyindent		"use exisiting indents for new indents
set preserveindent	"save as much indent structure as possible

"UI Config
set number			"line number
set showmatch		"highlight matching [({})]
set mat=2			"for showmatch, set how many tenth of second it blinks
set ruler			"show current position
set magic			"magic for regular expression
set confirm			"ask to save file
set showcmd			"display incomplete command in the lower right corner of the console
set undolevels=1000	"let vim allow 1000 undos
set textwidth=120

"Searching
set incsearch			   "search as char are entered
set hlsearch			   "highlight matches
set smartcase			   "smart with case search

"Folding
set foldenable	      "enable folds
set foldlevelstart=10 "prevent too many folds
set foldmethod=indent "set fold based on indentation
"can also be marker, manual, expr, syntax, or diff
"check :help for more information

"Movement
set mouse=a				     "mouse support in console (option + mouseclick for mac users)
set mousehide				 "hide cursor when typing
set scrolloff=10		         "minimum lines to keep above and below
if !has('nvim')
  set ttymouse=xterm2
endif

"line marker
set cc=120

" Go to next or prev buffer
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" Allow proper backspacing
set backspace=2

" Remove silly toolbars in gvim/macvim
if has("gui_running")
  set guioptions-=L
  set guioptions-=r
  set guioptions-=T
endif

" Highlight current line
set cursorline

" Allow relative line numbers
set relativenumber

" Use central directories for swaps and backups
set backupdir=~/.vim/backup
set directory=~/.vim/swap

" Unbind keys I never use
nnoremap q <nop>
nnoremap Q <nop>
nnoremap K <nop>

" Make Y like D
nnoremap Y y$

" Toggle pasting on for non-formatted pasting
set pastetoggle=<F10>

" Set default vim update UI time
set updatetime=400

" Set up NVIMUX (tmux) prefix
let g:nvimux_prefix='<C-w>'

