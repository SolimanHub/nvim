  "Notas a leer
  "
  "#Los plugins se guardan en la ruta especificada en la linea 'call plug#begin' 
  "#Nuestro gestor de plugins es Plug
  "#Escribir :Plug + Tabl para ver opciones del complemento Plug
  "#Ctrl+y+, para activar las abreviaturas de emmet
  set number!
  set ignorecase smartcase
  "set mouse=a
  "set nohlsearch
  set numberwidth=1git push
Enter passphrase for key '/home/rx/.ssh/id_ed25519':
Everything up-to-date
  set clipboard+=unnamedplus
  syntax enable
  set showcmd
  set ruler
  set cursorline
  set encoding=UTF-8
  set showmatch
  set sw=2
  set laststatus=2

  " PYTHOM
  autocmd FileType python set sw=4
  autocmd FileType python set ts=4
  autocmd FileType python set sts=4  

  " PHP
  autocmd FileType php set sw=1
  autocmd FileType php set ts=1
  autocmd FileType php set sts=1  
   
  ""Configuracions para coc

  set updatetime=100
  set pumheight=20

  call plug#begin('~/.config/plugged')
  " Temas
  Plug 'morhetz/gruvbox'
  Plug 'gosukiwi/vim-atom-dark'
  Plug 'tomasr/molokai'
  " para indicar el nombre del paquete se usan comillas simples
  
  " IDE
  Plug 'airblade/vim-gitgutter'				"Ver cambios en git
  Plug 'easymotion/vim-easymotion'			"Space-s busqueda rapida
  Plug 'KKPMW/vim-sendtowindow'
  Plug 'mattn/emmet-vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'ryanoasis/vim-devicons'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-fugitive'				"Permite comandos git en la session
  Plug 'vim-python/python-syntax'
  Plug 'vim-scripts/RltvNmbr.vim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}		"Para parsear el contenido del fichero
  Plug 'ap/vim-css-color'				"Colores css

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
  " Atajos para coc
  nmap <leader>gd <Plug>(coc-definition)
  nmap <leader>gr <Plug>(coc-references)

  ""Otros atajos
  nmap <leader>gi <Plug>(coc-implementation)
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
  nmap <C>l :nohlsearch<CR>
  nmap <Leader>n :RltvNmbr<CR>
  nmap <Leader>t :tabnew<Space>
  ""Realiza una nueva linea sin entrar en edicion
  nmap <Leader>o :s/\(.\)\n\(.\)/\1\r\r\2/<CR><C-o>:nohlsearch<CR>
  """xnoremap <Space>6 <C-o>:'<,'>s/^/\/\/<CR>
  
  "Escribir al interior 
  inoremap {<CR> {<CR>}<CR><C-o>k<C-o>O
  inoremap {<Space> {}<C-o>h<C-o>i
  inoremap (<Space> ()<C-o>h<C-o>i
  inoremap [<Space> []<C-o>h<C-o>i
  inoremap '<Space> ''<C-o>h<C-o>i
  inoremap "<Space> ""<C-o>h<C-o>i

  "Escribir al exterior
  inoremap (<C-Space> ()<C-o>a

  "Atajos pra las opciones de modo normal en edicion"
  inoremap 4<Space> <C-o>A
  inoremap 0<Space> <C-o>I
  inoremap oo<Space> <C-o>o
  inoremap 'b <C-o>/
  inoremap OO <C-o>O
  inoremap hj <C-o>j
  ""Correr el cursor un espacio a la derecha en modo edicion
  inoremap hl <C-o>a
  inoremap hk <C-o>k
  inoremap jk <Esc>
  inoremap a` á
  inoremap e` é
  inoremap i` í
  inoremap o` ó
  inoremap u` ú
  inoremap ;' ñ
  inoremap p' <C-o>P<C-o>A

  "inoremap <C-s> :w<CR>
  "" 
  ""Atajos en modo normal
  ""Especificos de algunos archivos
  autocmd FileType html inoremap ''' <!--<Space><Space><Space>--><C-o>h<C-o>h<C-o>h<C-o>h<C-o>x
  autocmd FileType html inoremap <Space>id<Space> id=""<Space><C-o>h<C-o>h<C-o>i
  autocmd FileType css inoremap {<CR> {<CR>/**/<CR>}<CR><C-o>k<C-o>O
  autocmd FileType javascript inoremap {<CR> {<CR>}<CR><C-o>k<C-o>O//<C-o>o<C-o>x<C-o>x
  autocmd FileType javascript inoremap if<Space> if(){<CR>}<CR><C-o>k<C-o>O//<C-o>o<C-o>x<C-o>x<C-o>k<C-o>k<C-o>l
  autocmd FileType javascript inoremap $<Space> $('').<C-o>h<C-o>h<C-o>i
  autocmd FileType php inoremap if<Space> if(){<CR>}<CR><C-o>k<C-o>O#<C-o>o<C-o>x<C-o>x<C-o>k<C-o>k<C-o>l
  autocmd FileType php inoremap else<Space> else{<CR>}<CR><C-o>k<C-o>O
  autocmd FileType php inoremap cophp <?php<CR>?><C-o>k<C-o>o
  autocmd FileType php inoremap $p $_POST['']<C-o>h<C-o>h<C-o>i
  autocmd FileType python noremap %% {%  %}<C-o>h<C-o>h<C-o>h<C-o>i

  "" Atajos en modo Vision
  vmap <Leader>2 :s/\%V\(.*\)\%V/"\1"/<CR>
  autocmd FileType javascript vmap <Leader>c :s/\%V\(.*\)\%V/\/\/\1/<CR>
  autocmd FileType php vmap <Leader>c :s/\%V\(.*\)\%V/#\1/<CR>
