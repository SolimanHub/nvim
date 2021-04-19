set rnu nu
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set encoding=utf-8
set showmatch
set sw=2

syntax enable

call plug#begin('~/.config/plugged')
" Themes " 
Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
