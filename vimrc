set nocompatible		" be iMproved, required
filetype off			" required

" set the runtime path to include Vundle and initialise
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" My plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'tomasr/molokai'


call vundle#end() 		    " required
filetype plugin indent on	" required


" Set colorscheme
colorscheme molokai

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



""" KEY MAPPINGS
" Tagbar plugin
nmap \e :TagbarToggle<CR>
nmap \q :NERDTreeToggle<CR>

" Go to next or prev file
nmap \n :bnext<CR>
nmap \p :bprev<CR>
