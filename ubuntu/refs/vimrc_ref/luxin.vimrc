set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set background=dark
set number
set cursorline

set mouse=a
set selection=exclusive
set selectmode=mouse,key

set showmatch
syntax on
set shiftwidth=4
set tabstop=4
set paste
set listchars=tab:>-,trail:-
set laststatus=2
set guifont=Courier_New:h14:cANSI
colorscheme murphy
set ruler
set autoread
set autowrite
set autoindent
set incsearch
set hlsearch
set clipboard=unnamedplus
set completeopt=preview,menu

map <C-A> ggVGY
map! <C-A> <Esc>ggVGY
map <F12> gg=G
vmap <C-c> "+y 

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

abbreviate E Explore  
iabbrev always_ff always_ff @ (posedge clk) begin
iabbrev always_comb always_comb begin

autocmd BufWritePost $MYVIMRC source $MYVIMRC"
autocmd BufNewFile *.c,*.cpp,*.py,*.sv,*.v exec ":call SetTitle()"                                                                     
func SetTitle() 
                call setline(1, "*************************************************************************")   
                call setline(2, "\ @Copyright 2019 xxx Inc. or its affiliates. All Rights Reserved.")   
                call setline(3, "\ @Description: Have g nice day!!!")   
                call setline(4, "\ @File Name: ".expand("%"))   
				call setline(5, "\ @Author: Lu Xin")   
				call setline(6, "\ @Email: 1296761136@qq.com")  
				call setline(7, "\ @Created Time: ".strftime("%c"))   
				call setline(8, "\ @Revision history:")   
                call setline(9, "************************************************************************")   

autocmd BufNewfile * normal G
endfunc


 
