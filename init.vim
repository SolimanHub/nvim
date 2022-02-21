  "Notas a leer
  "
  "#Los plugins se guardan en la ruta especificada en la linea 'call plug#begin' 
  "#Nuestro gestor de plugins es Plug
  "#Escribir :Plug + Tabl para ver opciones del complemento Plug
  "#Ctrl+y+, para activar las abreviaturas de emmet
  "
  "
  set number!
  set ignorecase smartcase
  "set mouse=a
  "set nohlsearch
  set numberwidth=1
  set clipboard=unnamed
  syntax enable
  set showcmd
  set ruler
  set cursorline
  set encoding=UTF-8
  set showmatch
  set sw=2
  set laststatus=2


  "Fuente: https://www.iteramos.com/pregunta/50529/insertar-automaticamente-un-corchete-coincidente-en-vim

  call plug#begin('~/.config/plugged')
  " Temas
  Plug 'morhetz/gruvbox'
  Plug 'gosukiwi/vim-atom-dark'
  Plug 'tomasr/molokai'
  " para indicar el nombre del paquete se usan comillas simples
  
  " IDE
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'easymotion/vim-easymotion'
  Plug 'mattn/emmet-vim'
  Plug 'vim-scripts/RltvNmbr.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  call plug#end()

  "colorscheme atom-dark
  "colorscheme molokai
  colorscheme gruvbox
  
  let g:gruvbox_contrast_dark = "hard"
  let mapleader=" "
  let g:user_emmet_mode = 'a'
  let NERDTreeQuitOnOpen=1
  nmap <Leader>s <Plug>(easymotion-s2)
  " espacio + s, seguido de 2 caracteres para saltar al lugar deseado
  nmap <Leader>w :wa!<CR>
  nmap <Leader>q :qa!<CR>
  nmap <Leader>1 :wq!<CR>
  nmap <Leader>nt :NERDTreeFind<CR>
  nmap <Leader>1 :b1<CR>
  nmap <Leader>2 :b2<CR>
  nmap <Leader>3 :b3<CR>
  nmap <Leader>4 :b4<CR>
  nmap <Leader>5 :b5<CR>
  nmap <Leader>6 :b6<CR>
  nmap <Leader>7 :b7<CR>
  nmap <Leader>8 :b8<CR>
  nmap <Leader>9 :b9<CR>
  nmap <Leader>0 :b0<CR>
  "para limpiar la pantalla de la busqueda
  nmap <Leader>l :nohlsearch<CR>
  nmap <Leader>n :RltvNmbr<CR>
  
  "inoremap {<CR> {<CR>}<C-o>O
  inoremap {<CR> {<CR>}<CR><C-o>k<C-o>O
  inoremap {<Space> { }<C-o>h<C-o>h<C-o>i
  inoremap (<Space> ( )<C-o>h<C-o>h<C-o>i
  inoremap (<C-Space> ()<C-o>a
  inoremap [<Space> [ ]<C-o>h<C-o>h<C-o>i
  inoremap '<Space> ' '<C-o>h<C-o>h<C-o>i
  inoremap "<Space> " "<C-o>h<C-o>h<C-o>i
  inoremap <C-s> :w<CR> 
  "Atajos pra las opciones de modo normal en edicion"
  inoremap p<C-Space> <C-o>P<C-o>A
  inoremap 4<Space> <C-o>A
  inoremap oo<Space> <C-o>o
  inoremap /<Space> <C-o>/
  inoremap OO <C-o>O
  inoremap jk <Esc>
  inoremap #c <C-o>I#
