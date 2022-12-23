" .vimrc for redhat
" Author: Haoran Geng
" Link: https://github.com/exaithrg/dotfiles

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" fix nerdtree icon bugs
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

syntax on
" or syntax enable

" default leader key is /, we use space.
let mapleader=" "

" set shortmess+=I " Disable the default Vim startup message.
" set showcmd		" Show (partial) command in status line.
" set showmatch		" Show matching brackets.	
" set hlsearch "high light search, annoying
" set autowrite		" Automatically save before commands like :next and :make
" set hidden " Hide buffers when they are abandoned
" set smartcase " Do smart case matching
set ignorecase " Do case insensitive matching. same as set ic
set incsearch " Incremental search
set bufhidden=hide "hide buffer when it be discarded
set number " Show line numbers.
set relativenumber
" set nowrap " do not wrap lines
set laststatus=2
set backspace=indent,eol,start
set ruler " show command line ruler
set expandtab " change tab to space automatically
set shiftwidth=4 "<< and >> width: 4
set softtabstop=4 " backspace width: 4
set tabstop=4 " tab width: 4
set textwidth=0 " do not automatically broke long lines.
set autochdir " auto switch work dir as current dir
set backupcopy=yes " overwrite as backup??
" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb= 
set matchtime=2 " time to jump to corresponding branket
"set magic
set updatetime=1000 "default=4000, 4 secs. 
" set smartindent " smartindent doesn't support verilog
set autoindent " use autoindent for verilog
" set cmdheight=1
" set cursorcolumn " same as set cuc  
" set cursorline " same as set cul
set laststatus=2 " show status line, defaulte is 1(hidden)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ Ln\ %l,\ Col\ %c/%L%) " what shows on status line
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
" set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
set mouse+=a
set scrolloff=7

" set foldclose=all "disable all fold, seems useless
set foldmethod=syntax 
set foldcolumn=0 
setlocal foldlevel=1 
" set fen " fold enable, = set foldenable
set nofen " do not fold anything, = set nofoldenable
" autocmd FileType * exe "normal zR"
" use space to turn on/off fold
nnoremap <leader>f @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> 

" Undo, Swap, and Backup Settings
" setlocal noswapfile 
" set nobackup " do not backup files when overwrite
set swapfile
" swpdir// is different from swpdir
" // means file names contain Absolute PATH
set directory=~/.vim/swpdir//
set backup
set backupdir=~/.vim/backupdir//
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir//

" colorscheme config
set background=dark
" not supported for Vim7.4 2013 Aug10
" set termguicolors

" to support themes below, $term must be xterm-256color
" colorscheme molokai
" let g:molokai_original=1
" let g:rehash256=1
" molokai can't highlight lines on redhat???

colorscheme vim-monokai-tasty
" colorscheme desert
" colorscheme neodark
" colorscheme murphy

highlight clear LineNr
highlight clear SignColumn
" highlight Visual cterm=bold ctermbg=LightBlue ctermfg=NONE
" hi Visual guifg=none guibg=LightBlue gui=none
" hi Visual cterm=none ctermbg=LightBlue ctermfg=none guibg=DarkGray
" hi Visual term=reverse cterm=reverse ctermbg=black guibg=grey60

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" :version must have '+clipboard'
" If not, you need to install vim-gtk3, or
set clipboard=unnamedplus
" Vim Ctrl+C
vnoremap <C-Y> y
" Vim Ctrl+X
vnoremap <C-D> d
" Vim Ctrl+V
nnoremap <C-P> p
inoremap <C-P> <ESC>p

" :set wrap! is ok, but alt not work.
nnoremap <C-L> :set wrap!<CR>

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" M means minus.
" C-X used as tmux prefix.
nnoremap <C-M> <C-X>

nnoremap <C-D> <C-D>zz
nnoremap <C-U> <C-U>zz
nnoremap <C-F> <C-F>zz
nnoremap <C-B> <C-B>zz

" Keep cursor in the middle all the time
" nnoremap <M-k> kzz
" nnoremap <M-j> jzz
" nnoremap <M-p> pzz
" nnoremap <M-P> Pzz
" nnoremap <M-G> Gzz
" nnoremap x xzz
" inoremap <ESC> <ESC>zz
" nnoremap <ENTER> <ENTER>zz
" inoremap <ENTER> <ENTER><ESC>zzi
" nnoremap o o<ESC>zza
" nnoremap o o<ESC>k
" nnoremap O O<ESC>zza
" nnoremap O O<ESC>j
" nnoremap a a<ESC>zza

" <C-J> has been used to switch between panes.
nnoremap J <C-E> 
" <C-K> has been used to switch between panes.
nnoremap K <C-Y> 
" <C-H> has been used to switch between panes.
nnoremap H zh 
" <C-L> has been used to switch between panes.
nnoremap L zl 

" noremap = nzz
" noremap - Nzz

" carefully use ZZ, ZZ may cause unanticipated exits.
nnoremap ZZ :echoe "Use :wq"<CR>
nnoremap QQ :q<CR>
nnoremap QA :qa!<CR>

nnoremap q: :echoe "q: not found, use ESC and :q to quit"<CR>

nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
" inoremap <Left>  <ESC>:echoe "Use h"<CR>
" inoremap <Right> <ESC>:echoe "Use l"<CR>
" inoremap <Up>    <ESC>:echoe "Use k"<CR>
" inoremap <Down>  <ESC>:echoe "Use j"<CR>

iabbrev always_ff always_ff @ (posedge clk) begin
iabbrev always_comb always_comb begin

" autocmd BufWritePost $MYVIMRC source $MYVIMRC"
autocmd BufNewFile *.c,*.cpp,*.py,*.sv,*.v exec ":call SetTitle()"
func SetTitle()
    call setline(1, "//***************************************************************")
    call setline(2, "// Description: ")
    call setline(3, "// File Name: ".expand("%"))
    call setline(4, "// Author: Haoran Geng")
    call setline(5, "// Email: ")
    call setline(6, "// Created Time: ".strftime("%c"))
    call setline(7, "// Revision history:")
    call setline(8, "//***************************************************************")
    call setline(9, "")
endfunc
autocmd BufNewfile * normal G

" NerdTree config

" let g:NERDTreeDirArrows      = 1
" let g:NERDTreeDirExpandable  = 1
" let g:NERDTreeDirCollapsible = 1
" let g:NERDTreeGlyphReadOnly  = "RO"

" autocmd VimEnter * NERDTree
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" :NERDTree to open
" ? to turn on the quick help
" map <F3> :NERDTreeMirror<CR>
" map <F3> :NERDTreeToggle<CR>
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <leader>m :NERDTree<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
" nnoremap <leader>f :NERDTreeFind<CR>



