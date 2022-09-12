set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

syntax on

set shortmess+=I " Disable the default Vim startup message.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.	
"set hlsearch "high light search, annoying
"set autowrite		" Automatically save before commands like :next and :make
set hidden " Hide buffers when they are abandoned
set ignorecase " Do case insensitive matching
set smartcase " Do smart case matching
set incsearch " Incremental search
setlocal noswapfile " 不要生成swap文件
set bufhidden=hide " 当buffer被丢弃的时候隐藏它
"colorscheme default " 设定配色方案
set number " Show line numbers.
set relativenumber
set laststatus=2
set backspace=indent,eol,start
"set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set nobackup " 覆盖文件时不备份
set autochdir " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes " 设置备份时的行为为覆盖
" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb= 
"set noerrorbells " 关闭错误信息响铃
"set novisualbell " 关闭使用可视响铃代替呼叫
"set t_vb= " 置空错误铃声的终端代码
set matchtime=2 " 短暂跳转到匹配括号的时间
"set magic " 设置魔术
set smartindent " 开启新行时使用智能自动缩进
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ Ln\ %l,\ Col\ %c/%L%) " 设置在状态行显示的信息
set mouse+=a
set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为 1
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

vnoremap <C-Y> "+y
vnoremap <C-D> "+d
nnoremap <C-P> "+p
nnoremap QQ :q!<CR>

nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

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

Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
"Plug 'lervag/vimtex'
"Plug 'godlygeek/tabular'
Plug 'scrooloose/syntastic'
"Plug 'altercation/vim-colors-solarized'
"Plug 'majutsushi/tagbar'

"Plug 'ctrlpvim/ctrlp.vim'
"let g:ctrlp_map = '<c-p>' " do not use <c-p> as ^p for paste
"let g:ctrlp_cmd = 'CtrlP'

Plug 'plasticboy/vim-markdown'
Plug 'ferrine/md-img-paste.vim'
"Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'

call plug#end()

