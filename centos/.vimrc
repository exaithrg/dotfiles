" .vimrc for centos

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" fix type bugs
set fileencoding=utf-8
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936,big-5                    
set enc=utf-8
let &termencoding=&encoding

syntax on

" default leader key is /, we use space.
let mapleader=" "

set shortmess+=I " Disable the default Vim startup message.
"set hlsearch "high light search, annoying
" set smartcase " Do smart case matching
set ignorecase " Do case insensitive matching
set incsearch " Incremental search
set bufhidden=hide "hide buffer when it be discarded
set backspace=indent,eol,start
set background=dark
set cuc " highlight column
set cul " highlight line
set nu
set relativenumber
" set nowrap " do not wrap lines
set backspace=indent,eol,start
"set cursorline "show a long annoying line. 
set ruler " show command line ruler
set expandtab
autocmd FileType make set noexpandtab
set shiftwidth=4
set softtabstop=4 " backspace width: 4
set tabstop=4 " tab width: 4
set textwidth=0 " do not automatically broke long lines.
set autochdir " auto switch work dir as current dir
set backupcopy=yes " overwrite as backup??
" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb= 
set matchtime=2 " time to jump to corresponding branket
" set magic
set updatetime=1000 "default=4000, 4 secs. 
" set smartindent " smartindent doesn't suppo
set autoindent " use autoindent for verilog
" set smartindent " smartindent doesn't support verilog
set cmdheight=1
set showcmd
set ruler
set laststatus=2 " show status line, defaulte is 1(hidden)
set laststatus=2 " show status line, defaulte is 1(hidden)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ Ln\ %l,\ Col\ %c/%L%) " what shows on status line
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
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
colorscheme desert
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

highlight clear LineNr
highlight clear SignColumn

" set guifont=Monospace\ 13

" Module top note information
:map <F5> 1GO<ESC>ggi// *********************************************************************************<cr><ESC>0d$i// Project Name : OSXXXX<cr><ESC>0d$i// Author       : Core_kingdom<cr><ESC>0d$i// Website      : https://blog.csdn.net/weixin_40377195<cr><ESC>0d$i// Create Time  : <C-R>=strftime("%F")<CR><cr><ESC>0d$i// File Name    : .v<cr><ESC>0d$i// Module Name  :<cr><ESC>0d$i// Called By    :<cr><ESC>0d$i// Abstract     :<cr><ESC>0d$i//<cr><ESC>0d$i// <cr><ESC>0d$i// *********************************************************************************<cr><ESC>0d$i// Modification History:<cr><ESC>0d$i// Date         By              Version                 Change Description<cr><ESC>0d$i// -----------------------------------------------------------------------<cr><ESC>0d$i// <C-R>=strftime("%F")<CR>    Macro           1.0                     Original<cr><ESC>0d$i//  <cr><ESC>0d$i// *********************************************************************************<cr><ESC>0d$i

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
nnoremap QQ :qa!<CR>

nnoremap q: :echoe "q: not found"<CR>

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

" " let g:NERDTreeDirArrows      = 1
" " let g:NERDTreeDirExpandable  = 1
" " let g:NERDTreeDirCollapsible = 1
" " let g:NERDTreeGlyphReadOnly  = "RO"
" 
" " autocmd VimEnter * NERDTree
" " Start NERDTree when Vim is started without file arguments.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" 
" " Start NERDTree and put the cursor back in the other window.
" " autocmd VimEnter * NERDTree | wincmd p
" 
" " Exit Vim if NERDTree is the only window remaining in the only tab.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" 
" " :NERDTree to open
" " ? to turn on the quick help
" " map <F3> :NERDTreeMirror<CR>
" " map <F3> :NERDTreeToggle<CR>
" " nnoremap <leader>n :NERDTreeFocus<CR>
" " nnoremap <leader>m :NERDTree<CR>
" nnoremap <leader>t :NERDTreeToggle<CR>
" " nnoremap <leader>f :NERDTreeFind<CR>
