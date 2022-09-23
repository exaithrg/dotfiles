"True Color
set t_Co=256 
if has("termguicolors")
    " fix bug for vim
    set t_8f=[38;2;%lu;%lu;%lum " ^[ is ^v+<ESC>
    set t_8b=[48;2;%lu;%lu;%lum " ^[ is ^v+<ESC>
    " enable true color
    set termguicolors
endif

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

syntax on

" default leader key is /, we use space.
let mapleader=" "

set shortmess+=I " Disable the default Vim startup message.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.	
"set hlsearch "high light search, annoying
"set autowrite		" Automatically save before commands like :next and :make
set hidden " Hide buffers when they are abandoned
" set smartcase " Do smart case matching
set ignorecase " Do case insensitive matching
set incsearch " Incremental search
setlocal noswapfile 
set bufhidden=hide "hide buffer when it be discarded
"colorscheme default
set background=dark
set number " Show line numbers.
set relativenumber
set nowrap " do not wrap lines
set laststatus=2
set backspace=indent,eol,start
"set cursorline "show a long annoying line. 
set ruler " show command line ruler
set shiftwidth=4 "<< and >> width: 4
set softtabstop=4 " backspace width: 4
set tabstop=4 " tab width: 4
set textwidth=0 " do not automatically broke long lines.
set nobackup " do not backup files when overwrite
set autochdir " auto switch work dir as current dir
set backupcopy=yes " overwrite as backup??
" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb= 
set matchtime=2 " time to jump to corresponding branket
"set magic
set smartindent
set cmdheight=1
set laststatus=2 " show status line, defaulte is 1(hidden)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ Ln\ %l,\ Col\ %c/%L%) " what shows on status line
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
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> 

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" :version must have '+clipboard'
" If not, you must install vim-gtk3
" Vim Ctrl+C
vnoremap <C-Y> "+y
" Vim Ctrl+X
vnoremap <C-D> "+d
" Vim Ctrl+V
nnoremap <C-P> "+p
inoremap <C-P> <ESC>"+p"

" :set wrap! is ok, but alt not work.
" nnoremap <M-Z> :set wrap! " useless. cannot switch. 

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
nnoremap QQ :q!<CR>

nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
" inoremap <Left>  <ESC>:echoe "Use h"<CR>
" inoremap <Right> <ESC>:echoe "Use l"<CR>
" inoremap <Up>    <ESC>:echoe "Use k"<CR>
" inoremap <Down>  <ESC>:echoe "Use j"<CR>

"vim-plug
":PlugInstall
":PlugStatus
":PlugClean
":PlugUpdate

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" https://vimawesome.com/plugin/fugitive-vim
Plug 'tpope/vim-fugitive'
" :Git or :G to call any arbitrary Git command.

" https://vimawesome.com/plugin/nerdtree-red
Plug 'preservim/nerdtree'

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" :NERDTree to open
" ? to turn on the quick help
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>m :NERDTree<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" show git status flags.
Plug 'xuyuanp/nerdtree-git-plugin'

" add filetype-specific icons to NERDTree
" cause bugs, need Droid Sans Mono for Powerline Nerd Font Complete font. do not use
" Plug 'ryanoasis/vim-devicons'

" https://vimawesome.com/plugin/syntastic
Plug 'scrooloose/syntastic'
" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"设置error和warning的标志
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol='?'
let g:syntastic_warning_symbol='?'
"no-unused-args 忽略不使用的参数
"no-redefined 忽略重定义
"no-max-line-length 忽略每行最长的检测
"ignore 542 551 忽略if条件的body为空(如...elseif ret == nil then end，then和end中间没有语句)；忽略空语句(如;)，如果用了;则成对出现该语法检测warning
"有语法错误的一行左侧栏会有S&gt;标识，光标移动到改行，vim下发会给出提示。修改正确后保存，则该'S&gt;'会消失。
let g:syntastic_lua_checkers = ["/usr/bin/luac5.3.5", "luacheck"]
let g:syntastic_lua_luacheck_args = "--codes --no-max-comment-line-length --ignore 542 551"

"c
"let g:syntastic_c_compiler =['gcc', 'clang', 'make']
"let g:syntastic_c_compiler_options ='-Wpedantic -g'
let g:syntastic_c_compiler_options ='-std=gnu99'
let g:syntastic_c_include_dirs=['/usr/include/']
let g:syntastic_c_config_file='.syntastic_c_config_file'

"cpp
let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
" syntastic end

Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
"Plug 'lervag/vimtex'
"Plug 'godlygeek/tabular'
"Plug 'altercation/vim-colors-solarized'
"Plug 'majutsushi/tagbar'

"Plug 'ctrlpvim/ctrlp.vim'
"let g:ctrlp_map = '<c-p>' " do not use <c-p> as ^p for paste
"let g:ctrlp_cmd = 'CtrlP'

Plug 'plasticboy/vim-markdown'
Plug 'ferrine/md-img-paste.vim'
"Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

