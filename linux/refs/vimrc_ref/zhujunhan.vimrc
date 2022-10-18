
set number
set nocompatible
set autoindent
set smartindent

set tabstop=4
set shiftwidth=4

set mouse=a
"set guifont=Courier\ 14

colorscheme desert

"syntax	 on
"filetype on
"filetype plugin on
"filetype indent on

execute pathogen#infect()


runtime macros/matchit.vim
syntax on
"Enable filetpye detection
filetype plugin indent on
set history=1000
set background=dark
set vb t_vb=
set ruler
set guifont=Courier\ New:h24

map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows		 = 1
let g:NERDTreeDirExpandable  = 1
let g:NERDTreeDirCollapsible = 1
let g:NERDTreeGlyphReadOnly  = "RO"
autocmd VimEnter * NERDTree


"call plug#begin()
"	Plug 'preservim/nerdtree'
"call plug#end()



