set rtp+=~/.vim/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'preservim/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

syntax enable

set background=dark
colorscheme badwolf

set encoding=utf-8

set nu

set hlsearch
set incsearch

set wrap
set formatoptions=tcqrn1

set smartindent
set expandtab
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o



