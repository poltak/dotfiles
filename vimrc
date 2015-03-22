set nocompatible		" be iMproved, required
filetype off			" required

" set the runtime path to include Vundle and initialise
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" My plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'


call vundle#end() 		    " required
filetype plugin indent on	" required
" END OF VUNDLE STUFF



" Set colorscheme
colorscheme sol

" Line marker
set cc=120

" Line numbers
set number

" Syntax highlighting
syntax on

" GUI font
set guifont=Menlo\ Regular:h12

" Set tabs to 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Fix backspace oddity
set backspace=2

" CtrlP settings- move it to top, ignore certain files
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'

" Powerline settings- always show, disable certain extensions, powerline fonts
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#csv#enabled = 0
let g:airline#extensions#eclim#enabled = 0
let g:airline#extensions#virtualenv#enabled = 0

" Set shell to be bash
set shell=zsh

""" KEY MAPPINGS
nmap \q :NERDTreeToggle<CR>
nmap \e :TagbarToggle<CR>

" Go to next or prev file
nmap <C-n> :bnext<CR>
nmap <C-m> :bprev<CR>
