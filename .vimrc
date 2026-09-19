"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" THIS PART IS FOR VUNDLE

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
let NERDTreeIgnore=['\.pyc$', '\~$']

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix

"Enable Folding

"set foldmethod=indent 

""function size less or equal to foldlevel will be open
""and more than foldlevel will be closed

"set foldlevel=0


""this is script search for bad whitespace and highlight it

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.cpp match BadWhitespace /\s\+$/
highlight BadWhitespace ctermbg=red guibg=darkred

""?

let python_highlight_all=1

""set some more thing that make vim env better

set number
syntax on 
set history=1000
set undolevels=1000
set relativenumber 
colorscheme desert

""highlight all matches of the current search pattern

set hls

""show matches while you are typing the search pattern

set is

""It makes searches case-insensitive

set ic

""normally search without worrying about capitalization

set sc
