"------------------------
" General options
"----------------------------
set ruler
set lazyredraw
set ttyfast
set number relativenumber " Relative numbers for jumping
set nu rnu " Hybrid numbers, you have relative numbers and the current line number

set autoindent " autoindent always ON.
set expandtab " expand tabs
set shiftwidth=2 " spaces for autoindenting
set softtabstop=2 " remove a full pseudo-TAB when i press <BS>

set scrolloff=8 " Keep at least 8 lines below cursor

set foldmethod=manual " To avoid performance issues, I never fold anything so...

set noshowmode " We don't need to know the insert/normal mode casue we have lualine

set ignorecase
set nohlsearch " Clear search highlights

set splitbelow splitright " Set the splits to open at the right side and below


"---------------------------
" Keybindings
"----------------------------


let mapleader = ","

" Snippet for console.log

nmap <leader><leader>c oconsole.log({});<Esc>==f{a

" To avoid undo points when using arrow keys

inoremap <Left> <c-g>U<Left>
inoremap <Right> <c-g>U<Right>

" Whit leader p you can delete things without saving to register so you can

" paste what you have before

vnoremap <leader>p "_d

" Make window navigation less painful.

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Working with buffers is cool.

set hidden

map <C-d> :bnext<CR>
map <C-a> :bprev<CR>
imap <C-D> <Esc>:bnext<CR>a
imap <C-A> <Esc>:bprev<CR>a

" Move up/down in wrapped lines by display lines

noremap <silent> <Up> gk
noremap <silent> <Down> gj

" To resize window height

nnoremap <silent> <Leader>h+ :exe "resize " . (winheight(0) * 5/4)<CR>
nnoremap <silent> <Leader>h- :exe "resize " . (winheight(0) * 4/5)<CR>

" To resize window width

nnoremap <silent> <Leader>w+ :exe "vertical resize " . (winwidth(0) * 5/4)<CR>
nnoremap <silent> <Leader>w- :exe "vertical resize " . (winwidth(0) * 4/5)<CR>

" Capital Y to copy to the end of the line like C or D


nnoremap Y y$

" To move in the search list but keeping the cursor in the middle of screen

nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap * *zzzv

" To close buffer without closing splits

nnoremap <silent> <C-q> :lclose<bar>b#<bar>bd #<CR>

" configuracion de blade laravel 

" Define some single Blade directives. This variable is used for highlighting only.
let g:blade_custom_directives = ['datetime', 'javascript']

" Define pairs of Blade directives. This variable is used for highlighting and indentation.
let g:blade_custom_directives_pairs = {
      \   'markdown': 'endmarkdown',
      \   'cache': 'endcache',
      \  }

call plug#begin()
  " If you are using Vim-Plug
  Plug 'yashguptaz/calvera-dark.nvim'
  Plug 'scrooloose/nerdtree'		
  Plug 'tpope/vim-fugitive'


  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'  " Temas para airline

  Plug 'valloric/youcompleteme'
  Plug 'mattn/emmet-vim'     
  
 
  
  Plug 'sheerun/vim-polyglot'
  
  Plug 'jwalton512/vim-blade'

  Plug 'othree/html5.vim'
  
call plug#end()




" NERD Tree
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual

" Abrir/cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR>

"cambiar en buffer
map <F4> :bnext<CR>
map <F3> :bprevious<CR>

" calavera-dark

"-- Optional Settings 
let g:calvera_italic_comments = 1
let g:calvera_italic_keywords = 1
let g:calvera_italic_functions = 1
let g:calvera_contrast = 1

"-- Required
colorscheme calvera


" color theme airline 
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo

set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)
