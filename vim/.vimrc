execute pathogen#infect()
syntax on
filetype plugin on

autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType tex setlocal spell spelllang=en_gb
retab
colo pablo

set backspace=start,indent,eol
set expandtab
set hls is
set tabstop=4
set nu
set autoindent
set shiftwidth=4
set showmatch
set wrapscan
set background=dark
set backupdir=~/.vim/backup
set incsearch
set ignorecase
set smartcase
set hlsearch

" Powerline recommended settings
set nocompatible
set laststatus=2
set encoding=utf-8

" Beautiful line marker
set cc=120
hi ColorColumn ctermbg=yellow guibg=yellow

colorscheme desert

" Make vim-taglist go on the rightside of the window
let Tlist_Use_Right_Window  = 1

" Useful key mappings
nmap <C-e> :e#<CR>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>
nmap \e :NERDTreeToggle<CR>
nmap \t :TlistToggle<CR>
nmap \l :set cc=0<CR>
nmap \k :set cc=120<CR>

" gvim stuff
if has('gui_running')
    set guifont=ProFont\ 10
    set lines=65 columns=105
    "set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar

    " Toggles removal of menubar, toolbar and right-hand scrollbar in gvim
    nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
    nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
    nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>
endif
