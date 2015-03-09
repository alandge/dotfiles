
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vundle/Vundle.vim
call vundle#begin('~/.vundle')

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" My plugins:
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'kien/ctrlp.vim.git'
" Plugin Valloric/YouCompleteMe
Plugin 'L9'
Plugin 'FuzzyFinder'

call vundle#end()             " required!
filetype plugin indent on     " required!

" Colors
let g:solarized_termcolors=256 " for ssh terminal
"set background=dark
"colorscheme solarized

set smarttab

set backspace=indent,eol,start
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set selectmode=mouse
set showmatch
set guifont=Courier_New:h15
set textwidth=80
colorscheme desert
set number
set ruler
set cc=+1

" Line numbers duh
set number

" Case searching ignore+smart
set ignorecase
set smartcase

" Auto-load global ycm conf file [YouCompleteMe]
" let g:ycm_allow_changing_updatetime = 0
" let g:ycm_confirm_extra_conf = 0
" au FileType cc,cpp,hpp let g:ycm_global_ycm_extra_conf = ~/.vim/.ycm_extra_conf_cpp.py
" au FileType c,h let g:ycm_global_ycm_extra_conf = ~/.vim/.ycm_extra_conf_c.py

" Auto-open NERDTree
autocmd VimEnter * NERDTree

" Switch to code window
autocmd VimEnter * wincmd l

" Update every 1/10 of a second
autocmd VimEnter * set updatetime=100

" CTRLP working path mode
let g:ctrlp_working_path_mode = 0

if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

                          
