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
set cc=80
hi ColorColumn ctermbg=yellow guibg=yellow

" Useful key mappings
nmap <C-e> :e#<CR>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>
nmap \e :NERDTreeToggle<CR>
