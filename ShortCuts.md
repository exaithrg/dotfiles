# GHR ShortCuts CheatSheet

**NOTE**: The shortcuts and configs in this sheet may be out of date because I'm very lazy and don't want to sync this sheet with my dotfiles' config immediately. So if you want to know my current configuration please RTFSC.

## Xmodmap

`.Xmodmap` is used to remap `<ESC>` with `<CapsLock>`

**PS**: If you want to do the same thing in windows, use [PowerToys](https://github.com/microsoft/PowerToys)

## My Shell Aliases

```bash
clsourquotes() {
	clear
	source ~/.randomquotes;
}
killmanytmuxsessions() {
    for sessname in $@; do
        echo "killing $sessname"
        tmux kill-session -t $sessname
    done
}
gadplusgcm() {
    git add .
    git commit -m $1
}
alias cl='clsourquotes'
alias l='ls -CF'
alias ll='ls -AhF'
alias lll='ll -l'
alias la='ls -A'
alias sl='sl -e'
# alias dc='cd'
alias mv='mv -i'
alias cp='cp -i'
alias mkdir='mkdir -p'
alias df='df -h'
alias xo='xdg-open'
# alias sed='sed -E'

alias v='vim'
alias ty='typora'

alias tm='tmux'
alias tms='tmux new -s'
alias tma='tmux attach -t' # = tmux a -t
alias tmk='killmanytmuxsessions'
alias tmkall='tmux kill-server'
alias tmls='tmux ls'

alias gs='git status'
alias gp='git push'
alias gpl='git pull'
alias gad='git add .'
alias gcm='git commit -m'
alias gac='gadplusgcm'

# alias scs='gnome-screenshot -a'
# alias matr='cmatrix -r'
# alias matg='cmatrix'
```

### Vim mode

**Enable Vim-mode**

> If you’re a Bash user, use `set -o vi`. If you use Zsh, `bindkey -v`. For Fish, `fish_vi_key_bindings`. Additionally, no matter what shell you use, you can `export EDITOR=vim`. This is the environment variable used to decide which editor is launched when a program wants to start an editor. For example, `git` will use this editor for commit messages.

```bash
export EDITOR=vim
```

## Vim Shortcuts

> Stick with it because I'd say that in about 20 hours of programming using a new editor you'll be back to the same speed at which you programed using your old tool, and then after that the benefits will start, and you'll get faster and faster as you learn more.
>
> Once this becomes muscle memory you can basically **edit files at the speed at which you think**.

```css
<hjkl> "move the cursor"
z<hlseHL> "scroll left/right"
ZQ=:q!<CR> "force quit"
ZZ=:wq<CR> "write and quit"
<ESC> "back to normal mode"
u "undo"
U "undo, whole line"
^R "redo"
x=dl "delete current character"
X "delete character before"
zz "curnt line scroll to center"
zt "curnt line scroll to top"
zb "curnt line scroll to bottom"
H "cursor move to top"
M "cursor move to middle"
L "cursor move to bottom"
^f "Page Down FForward"
^b "Page Up BBackward"
^d "Half Page DDown"
^u "Half Page UUp"
^e "scroll one line down"
^y "scroll one line up"
^g "show where you current are"
^o "go back to the next position"
^i "go forward to the next position"
^z "suspend vim. type fg to go back"
^a "add 1"
<n>^a "add n"
^x "minus 1"
<n>^x "minus n"
i "insert"
I "insert at the begin of the line"
a "append"
A "apend after the end of the line"
r<x> "replace a character with x"
R "continue replace a lot of characters"
s=cl "delete character and start insert"
S "delete line and start insert"
e "next end of a word"
w "next start of a word"
W "next WORD, sep by BLANK"
b "front start of a word"
ge "front end of a word"
f<x> "find char x on the curnt line"
F<x> "backward find char x"
; "navigating f matches"
, "backward navigating f matches"
t<x> "move cursor till char x"
T<x> "move cursor back till char x"
/{regex} "search regular expression"
?{regex} "backward search regex"
n "next search"
N "backward next search"
% "find a matching bracket"
^ "go to the first NOT blank char"
g_ "go to the last NOT blank char"
0 "move to the start of the line"
$ "go to end of a line"
gg "go to start of the file"
G "go to the end of the file"
<n>G=<n><CR>=:<n> "go to line n"
<p>% "go to location <p>%"
p "paste, or put"
y "yank, copy text"
yw "yank, copy one word"
v "start visual mode"
V "select the whole line"
^v "start block select v mode"
yy=Y "copy current line"
dd "delete and copy current line"
ddp "swap lines"
cc "change the whole line"
o "new line and start insert"
O "new line above and start insert"
de "del to the end space without space"
dw "del to the end space with space"
diw "can delete all blank char"
ce "change the word until the end"
c$ "change the line until the end"
cw "change the word, seems equal to ce"
ciw "can change all blank char"
. "repeat the last OPERATION"
d$ "delete to the end of the line"
~ "flips the case of a character"
gu{motion} "to lowercase"
gU{motion} "to uppercase"
gx "open a superlink in browser"
<sym>=b() [] B{} <> '' "" etc
ci<sym> "change in <sym>"
di<sym> "delete in <sym>"
yi<sym> "copy in <sym>"
vi<sym> "select in <sym>"
ca<sym> "change include <sym>"
da<sym> "delete include <sym>"
ya<sym> "copy include <sym>"
va<sym> "selet include <sym>"
ct<sym> "change to <sym>"
dt<sym> "delete to <sym>"
vt<sym> "select to <sym>"
yt<sym> "copy to <sym>"
" "visit regs"
qq "reg q recording start/stop "
@q "exe reg q macro"
<n>@q "exe reg q macro n times"
<ins>^u "delete all before cursor"
<ins>^w "delete word before cursor"
<ins>^o "execute a normal cmd once"
set nocp "not in compatible mode"
set ic "ignore case when search"
set hls "high light search"
set is "incremental search"
set fen "fold enable"
set wrap "wrap lines"
set noxxx "disable xxx"
:s/a/b "replace one a with b"
:s/a/b/g "replace all in current line"
:s/a/b/gc "ask for yes and replace"
:%s/a/b/g "replace in the whole file"
:#,#s/a/b/g "change in line #,#"
:! <cmd> "execute a bash cmd"
:w filename "write to file filename"
:r FILENAME "insert a file"
:r !cmd "insert cmd output"
:e^D "cmd completion. ^D=<TAB>"
:n "edit next file"
:N "edit last file"
:files "list all files opened"
:sp "split horizontally"
:vsp "split vertically"
^w<hjkl> "change current window"
^W^W "jump between windows"
F1 "start help"
:help w "getting help"
:help c_CTRL-D "getting help"
:help insert-index "getting help"
:help user-manual "getting help"
```

### My Vim Key Remap

```css
^<hjkl> "switch windows"
nmap Q <Nop>
" Vim Ctrl+C
vnoremap <C-Y> "+y
" Vim Ctrl+X
vnoremap <C-D> "+d
" Vim Ctrl+V
nnoremap <C-P> "+p
inoremap <C-P> <ESC>"+p
nnoremap <C-M> <C-X>
nnoremap <C-D> <C-D>zz
nnoremap <C-U> <C-U>zz
nnoremap <C-F> <C-F>zz
nnoremap <C-B> <C-B>zz
nnoremap J <C-E>
nnoremap K <C-Y>
nnoremap H zh
nnoremap L zl
nnoremap ZZ :echoe "Use :wq"<CR>
nnoremap QQ :q!<CR>
nnoremap q: :echoe "q: not found"<CR>
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
nnoremap <C-W> :set wrap!<CR>
```

### Longer Commands

```css
vim -b filename "can show ^M"
:%s/^v^m$//g "delete all ^M to fix LF and CRLF bug"
:%s/regexp/&/gn "Count occurrences of regexp"
:%s/regexp//gn "Count occurrences of regexp"
%s/\[.*\](\(.*\))/\1/g "replace named Markdown links with plain URLs"
i1<ESC>q1yyp<C-a>q98@1 "generate 1 to 100"
<C-v>24l4jd$p "block select and repaste"
qa3jYjVpq2@aZZ "https://www.vimgolf.com/challenges/4d1a34ccfa85f32065000004"
:g/V/t.|+d<CR>ZZ "https://www.vimgolf.com/challenges/4d1a34ccfa85f32065000004"
:g/V/t+|-d<CR>ZZ "https://www.vimgolf.com/challenges/4d1a34ccfa85f32065000004"
:%s/aaa/x&x<CR>ZZ "https://www.vimgolf.com/challenges/4d1a8bf2b8cb3409320002c4"
qa5wlguwwl.wl.0jq7@a5Gfl~ZZ "https://www.vimgolf.com/challenges/5ed621c31a86b700094a80ec"
oCOLORS = {<Esc>qq<CR>i  '<Esc>ElcW': '<Esc>A',<Esc>@qq@qo<BS><BS>}<Esc>ZZ "https://www.vimgolf.com/challenges/5f1e93e8becb80000992ba98"
ww8sNEW<Esc><C-A>ZZ "https://www.vimgolf.com/challenges/52c3cb0d9b8634000200000e"
```

### Plugin Shortcuts

```css
:PlugInstall
:PlugStatus
:PlugClean
:PlugUpdate
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>m :NERDTree<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
let g:ctrlp_map = '<c-n>' 
<leader>cc "comment lines"
<leader>c<leader> "uncomment lines"
```

## Vimium Shortcuts

```css
f "open a link in current tab"
F "open a linke in a new tab"
hjkl "scroll line"
gg "go to top"
G "go to bottom"
du "scroll half page"
yy "copy url"
p "open url in current tab"
P "open url in new tab"
o "open url/history/bookmark"
b "open a bookmark"
B "open a bookmark in newtab"
/ "search"
n "cycle forward to the next match"
N "cycle backward to the previous match"
t "create new tab"
T "search in all opened tabs"
J "go to tab left"
K "go to tab right"
^ "go to previouse tab"
g0 "goto first tab"
g$ "goto last tab"
yt "duplicate tab"
<a-m> "mute tab"
x "close tab"
X "restore tab"
<a-q> "closeTabsOnLeft"
<a-w> "closeTabsOnRight"
```

### My Vimium Key Remap

```css
# Insert your preferred key mappings here.
map <a-q> closeTabsOnLeft
map <a-w> closeTabsOnRight
map u restoreTab
# map Xz closeTabsOnLeft
# map Xc closeTabsOnRight
map H previousTab
map L nextTab
map u scrollPageUp
map d scrollPageDown
^<hjkl> "switch windows"
```

## Tmux Shortcuts

```css
FOR SESSIONS
tmux new -s <name> "new session"
tmux ls "list all session"
tmux attach -t <name> "reenter a exist session"
tmux a "attaches the last session"
^b d "detach a session"
^b s "list and select session"
FOR WINDOWS
^b c "new window"
^b N "go to Nth window"
^b p "previous window"
^b n "next window"
^b , "rename window"
^b w "list and select windows"
^b l "switch window"
^b & "close current window"
FOR PANES
^b % "new split horizionally"
^b " "new split vertically"
^b <arrow> "switch pane"
^b ^<arrow> "resize pane"
^b x "close current pane"
^d "close current pane"
^b ; "to previous pane"
^b o "to next pane"
^b [ "enter copy mode"
q "quit copy mode"
^b <space> "cycle through pane arrangements"
^b ! "use current pane as new window"
^b z "toggle maximum current pane"
OTHERS
^b ? "open help"
^b : "enter cmd mode"
```

### My Tmux Key Remap

```css
^x "prefix"
- "split vertically"
| "split horizontally"
L "switch window"
q "window left from SEKIRO"
e "window right. from SEKIRO"
W "new window"
w "list window"
r "reload .tmux.conf"
```

