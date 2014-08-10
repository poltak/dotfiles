set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My plugins!
Plugin 'ddollar/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/ZoomWin'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bling/vim-airline'
Plugin 'SirVer/ultisnips'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'mhinz/vim-signify'
Plugin 'vim-scripts/a.vim'
Plugin 'tomasr/molokai'
Plugin 'git://git.code.sf.net/p/vim-latex/vim-latex'
Plugin 'majutsushi/tagbar'

call vundle#end()            " required
filetype plugin indent on    " required

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Set ST3 colorscheme
colorscheme molokai

" Line marker
set cc=120

" Line numbers
set number

" GUI font
set guifont=Menlo\ Regular:h12

" Set tabs to 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Required for Latex-Suite
filetype plugin on
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'

" Show airline all the time
set laststatus=2

" Show other buffers when in single tab mode
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

""" KEY MAPPINGS
nmap \q :NERDTreeToggle<CR>
nmap \e :TagbarToggle<CR>
" Go to next or prev file
nmap \n :bnext<CR>
nmap \p :bprev<CR>

