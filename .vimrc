" Tharindu Patabandi <tharindu at protonmail dot com>
"
"
" ---------------------------
" BASIC COMPATIBILITY
" ---------------------------

set nocompatible
filetype off

" ---------------------------
" VUNDLE SETUP
" ---------------------------

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()

filetype plugin indent on

" ---------------------------
" GENERAL UI SETTINGS
" ---------------------------
set number
" set relativenumber
set cursorline
set showcmd
set showmatch
set wildmenu
set scrolloff=5
set laststatus=2
set noshowmode

" ---------------------------
" EDITING BEHAVIOR
" ---------------------------
set expandtab           " use spaces instead of tabs
set tabstop=4           " visual tab width
set shiftwidth=4        " indentation width
set softtabstop=4
set autoindent
set smartindent
let g:netrw_liststyle = 3

" ---------------------------
" AIRLINE CONFIG
" ---------------------------
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
