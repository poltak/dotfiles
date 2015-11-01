" auto reload .vimrc when changed, this avoids reopening vim
autocmd! bufwritepost .vimrc source %

set nocompatible              " be iMproved, required
filetype on                   " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins to be managed by Vundle
" ----------------------------------------------------------
"Plugin 'edkolev/promptline.vim'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Raimondi/delimitMate'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'majutsushi/tagbar'
Plugin 'christoomey/vim-tmux-navigator'

"
" ------------------------------------------------------------
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype indent plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line







" = = = = INDENT GUIDES SETTINGS = = = =

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkblue
autocmd VimEnter * :IndentGuidesEnable




" = = = = AIRLINE SETTINGS = = = =

" statusline
set laststatus=2

" airline UI
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'

" separators
let g:airline#extensions#tabline#left_sep = '▶'
let g:airline#extensions#tabline#left_alt_sep = '▶'
let g:airline#extensions#tabline#right_sep = '◀'
let g:airline#extensions#tabline#right_alt_sep = '◀'
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '◀'
"let g:airline_symbols.branch = '▶'
"let g:airline_symbols.readonly = '▶'
"let g:airline_symbols.linenr = '▶'

function! AirlineInit()
	let g:airline_section_a = airline#section#create(['mode',' ','branch'])
	let g:airline_section_b = airline#section#create_left(['%F'])
	let g:airline_section_c = airline#section#create(['ffenc',' ','[%Y]'])
	let g:airline_section_x = airline#section#create(['%P'])   "P
	let g:airline_section_y = airline#section#create(['row:%l/%L ','(%03p%%)'])
	let g:airline_section_z = airline#section#create_right(['col:%03c'])
endfunction
autocmd VimEnter * call AirlineInit()




" = = = = SYNTASTIC SETTINGS = = = =

" Syntastic settings recommended
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" enable all checkers on same file
let g:syntastic_aggregate_errors = 1

" enable syntax checkers
let g:syntastic_c_checkers = ['gcc']
let g:syntastic_cpp_checkers = ['cppcheck' , 'gcc' , 'make']
let g:syntastic_matlab_checkers = ['mlint']
let g:syntastic_markdown_checkers = ['mdl']
let g:syntastic_text_checkers = ['language_check' , 'atdtool']

let g:syntastic_cpp_compiler = 'clang++' " C++ compiler
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++' " C++11 support
let g:syntastic_cpp_compiler_options = ' -std=c++1y' " C++14 support




" = = = = NERDTREE SETTINGS = = = =

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary")
nmap \q :NERDTreeToggle<CR>




" = = = = TAGBAR SETTINGS = = = =

nmap \e :TagbarToggle<CR>




" = = = = TRAILING WHITESPACE SETTINGS = = = =
" automatic Whitespace removal
autocmd VimEnter,BufReadPost,bufwritepost,bufenter * :FixWhitespace




" = = = = THEME SETTINGS = = = =
" molokai theme
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai





" = = = = MISC SETTINGS = = = =
" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" commenting
set comments=sl:/*,mb:\ *,elx:\ */
set wildmode=longest:full,list
set wildmenu
set t_Co=256

syntax on

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
let g:tmux_navigator_no_mappings = 1

" vim-tmux-navigator mappings
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
"nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

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
