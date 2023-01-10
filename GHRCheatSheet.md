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

geditruninbg() {
    gedit $1 &
}

typoraruninbg() {
    typora $1 &
}

cdpluslscf() {
    cd $1
    ls -CF
}

gadplusgcm() {
    git add .
    git commit -m $1
}

gadplusgcmplusgp() {
    git add .
    git commit -m $1
    git push
}

alias sudo='sudo '
alias cl='clsourquotes'
alias l='ls -CF'
alias ll='ls -AhF'
alias lll='ll -l'
alias la='ls -A'
alias sl='sl -e'
alias c='cd'
# alias dc='cd'
alias cl='cdpluslscf'
alias cb='cd -'
alias b='cd ..'
alias bb='cd ../..'
alias bbb='cd ../../..'
alias bbbb='cd ../../../..'
alias bbbbb='cd ../../../../..'

alias mv='mv -i'
alias cp='cp -i'
# Do not alias rm -vI. Cuz if you used to it, 
# you will expect rm prompt you by default
# So do not change the original behavior of rm
# alias rm='rm -vI'
alias rm='echo "rm is disabled. use remove."'
alias remove='/usr/bin/rm -vI'
# alias remove='/usr/bin/rm -vi'
# use sudo removegit
alias removegit='remove -r .git'

alias mkdir='mkdir -p'
alias df='df -h'
alias xo='xdg-open'
alias so='source'
# alias sed='sed -E'

alias v='vim'
alias typora='typoraruninbg'
alias ty='typora'
alias gedit='geditruninbg'

alias tm='tmux'
alias tms='tmux new -s'
alias tma='tmux attach -t' # = tmux a -t
alias tmk='killmanytmuxsessions'
alias tmkall='tmux kill-server'
alias tmls='tmux ls'

alias gs='git status'
alias gp='git push'
alias gl='git pull'
# unalias gl
# alias gpl='git pull'
alias gad='git add .'
alias gcm='git commit -m'
alias gac='gadplusgcm'
alias gacp='gadplusgcmplusgp'
alias glog='git log'
alias gref='git reflog'
alias gldag='git log --all --graph --decorate'

alias njuvpn='easyconnect &'
alias vr='verilator'
alias gw='gtkwave'

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
ZQ=:q!<CR> "force quit"
ZZ=:wq<CR> "write and quit"
:qa<CR> "close all and quit"
<ESC> "back to normal mode"
u "undo"
U "undo, whole line"
^R "redo"
zz "curnt line scroll to center"
zt "curnt line scroll to top"
zb "curnt line scroll to bottom"
z<hlseHL> "scroll left/right"
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
x=dl "delete current character"
X "delete character before"
r<x> "replace a character with x"
R "continue replace a lot of characters"
s=cl "delete character and start insert"
S "delete line and start insert"
w "next start of a word"
W "next WORD, sep by BLANK"
e "next end of a word"
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
o "new line and start insert"
O "new line above and start insert"
v "start visual mode"
V "select the whole line"
^v "start block select v mode"
p "paste, or put"
y "yank, copy text"
yy=Y "copy current line"
yw "yank, copy one word"
dd "delete and copy current line"
ddp "swap lines"
de "del to the end space without space"
dw "del to the end space with space"
diw "can delete all blank char"
d$ "delete to the end of the line"
cc "change the whole line"
ce "change the word until the end"
cw "change the word, seems equal to ce"
ciw "can change all blank char"
c$ "change the line until the end"
. "repeat the last OPERATION"
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
[ins]^u "delete all before cursor"
[ins]^w "delete word before cursor"
[ins]^o "execute a normal cmd once"
:set nocp "not in compatible mode"
:set ic "ignore case when search"
:set hls "high light search"
:set is "incremental search"
:set fen "fold enable"
:set wrap "wrap lines"
:set noxxx "disable xxx"
:s/a/b "replace one a with b"
:s/a/b/g "replace all in current line"
:s/a/b/gc "ask for yes and replace"
:%s/a/b/g "replace in the whole file"
:#,#s/a/b/g "change in line #,#"
:shell "open shell"
exit "close opened shell, back to vim"
:! <cmd> "execute a bash cmd"
:w <fname> "write to file filename"
:r <fname> "insert a file"
:r !cmd "insert cmd output"
:e^D "cmd completion. ^D=<TAB>"
:n "edit next file"
:N "edit last file"
:files "list all files opened"
:ls "show current buffer"
:tabnew "open a new tab"
:tabc "close current tab"
:tabo "close other tabs"
:tabs "list opened tabs"
:tabn=gt "go to next tab"
:tabp=gT "go to previous tab"
:tabr "go to fiRst tab"
:tabl "go to Last tab"
:f <tname> "rename tab not filename"
:new "open a new window"
:sp "split horizontally"
:vsp "split vertically"
^w^w=^ww "jump between windows"
^w<hjkl> "change current window"
^wt "move to Top-lefT window"
^wb "move to Bottom-right window"
^wp "move to pre-visited window"
^w<+-<>> "resize window"
:res <n> "show n lines"
:res+<n> "show n lines more"
:res-<n> "show n lines less"
:vert res "not lines, but columns"
F1 "start help"
:h help "see what help you can get"
:h user-manual "open user manual"
:h index "help file index"
:h insert-index "example"
:h :<cmd> "cmd mode help"
:h :sp "example"
:h <cmd> "normal mode help"
:h j "example"
:h v_<cmd> "visual mode help"
:h v_y "example"
:h i_<key> "insert mode key help"
:h i_CTRL-o "example"
:h c_<key> "normal mode key help"
:h c_CTRL-w "example"
:h /<regex> "regex help"
:h /\r "example"
:h '<setcmd>' "setable paras help"
:h 'hls' "example"
:h -<arg> "vim arguments help"
:h -b "example"
ggdG "say goodbye to your file"
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

# Shell Commands

```bash
echo $PATH
echo $TERM
echo $SHELL
neofetch
btop
df -h
free -m
du -sh *
lscpu
cat /proc/cpuinfo
nvidia-smi
top
fdisk -l
cat /etc/redhat-release
uname -a
cat /etc/*-release


^z
^r
bg
fg
jobs
bg %1
kill %1
nohup sleep 2000 & [cannot be stopped by kill -HUP]
kill -STOP %1
kill -HUP %1


# last command
ffmpeg -loglevel panic -i /home/geng/D/movies/Pearl_Harbor.rmvb -frames 1 -f image2 - | convert - -colorspace gray - > hello.png
# or
ffmpeg -loglevel panic -i /home/geng/D/movies/Miyamoto/Musashi01.rmvb -frames 10000 -f image2 - | convert - -colorspace gray - > xmwz.png

cat psefvnc_dell03.txt | grep desktop | sed -E 's/^.*\(([a-z]+)\).*$/\1/' | sort | uniq -c | sort -nk1,1 | tail -n5 | gnuplot -p -e 'set boxwidth 0.5; plot "-" using 1:xtic(2) with boxes'
cat psefvnc_dell03.txt | grep desktop | sed -E 's/^.*\(([a-z]+)\).*$/\1/' | sort | uniq -c | sort -nk1,1 | tail -n5 | grep -v 'zh'
      4 linye
      5 xiechenjia
grep -v means dont match
find . -name "*.txt" | xargs grep "genghaoran"
find . -name "*.txt" | xargs echo grep "genghaoran"
echo command, not really execute it. can used to debug xargs.

cat psefvnc_dell03.txt | grep desktop | sed -E 's/.*dell03://' | sed -E 's/ .auth.*$//'
echo 'aba' | sed 's/[ab]//' [ba]
echo 'aba' | sed 's/[ab]*//' [NULL]
echo 'bba' | sed 's/[ab]//g' [NULL]
echo 'asldgjakfjsbbba' | sed 's/[ab]//g' [sldgjkfjs]
echo 'abcaba' | sed -E 's/(ab)*//g' [ca]
echo 'abcaba' | sed 's/\(ab\)*//g' [ca]
echo 'abcaba' | sed 's/(ab)*//g' [abcaba]
echo 'abcababc' | sed -E 's/(ab|bc)*//g' [cc]
echo 'abcabbc' | sed -E 's/(ab|bc)*//g' [c]
echo 'Disconnected from invalid user Disconnected from 84.211' | sed -E 's/.*Disconnected from //' [84.211, cause greedy]
echo 'Disconnected from invalid user Disconnected from 84.211' | sed -E 's/.*?Disconnected from //'84.211 [should not greedy, but sadly sed does not support ?]
echo 'Disconnected from invalid user Disconnected from 84.211' | sed -E 's/^.*Disconnected from (invalid )?user .* [0-9.]*$//' [NULL]
echo 'Disconnected from invalid user Disconnected from 84.211' | sed -E 's/^.*Disconnected from (invalid )?user (.*) [0-9.]*$//' [ADD Capture Group for username]
echo 'Disconnected from invalid user Disconnected from 84.211' | sed -E 's/^.*Disconnected from (invalid )?user (.*) [0-9.]*$/\2/' [Disconnected from]
cat psefvnc_dell03.txt | grep desktop | sed -E 's/.*dell03://' | sed -E 's/ .auth.*$//' | sed -E 's/^([0-9]+) \((.*)\)/\1 \2/' | head -n5 [can remove all ()]
cat psefvnc_dell03.txt | grep desktop | sed -E 's/.*dell03://' | sed -E 's/ .auth.*$//' | sed -E 's/^([0-9]+) \((.*)\)/\1 \2/' | sort -n
cat psefvnc_dell03.txt | grep desktop | sed -E 's/.*dell03://' | sed -E 's/ .auth.*$//' | sed -E 's/^([0-9]+) \((.*)\)/\1 \2/' | sort -n | sed -E 's/^[0-9]+ ([a-z]+).*$/\1/' | uniq -c [ERROR! 5 xiechenjia, but only 2]
cat vncpsef_point9.txt | grep desktop | sed -E 's/.*server://' | sed -E 's/ .auth.*$//' | sed -E 's/^([0-9]+) \((.*)\)/\1 \2/' | sort -n | sed -E 's/^[0-9]+ ([a-z]+).*$/\1/' | grep xiechenjia
cat psefvnc_dell03.txt | grep desktop | sed -E 's/^.*\(([a-z]+)\).*$/\1/' | uniq -c [still have uniq bugs]
cat psefvnc_dell03.txt | grep desktop | sed -E 's/^.*\(([a-z]+)\).*$/\1/' | sort | uniq -c [OK. MUST SORT FIRST]
cat psefvnc_dell03.txt | grep desktop | sed -E 's/^.*\(([a-z]+)\).*$/\1/' | sort | uniq -c | sort -n | tail -n5 [OK!!!]
wc -l :33 [33 users are using dell03]
cat vncpsef_point9.txt | grep desktop | sed -E 's/^.*\(([a-z]+)\).*$/\1/' | sort | uniq -c | sort -n | tail -n5
wc -l :15 [15 users are using point9]
cat psefvnc_dell03.txt | grep desktop | sed -E 's/^.*\(([a-z]+)\).*$/\1/' | sort | uniq -c | sort -rnk1,1 | head -n5
1,1 means start at the first column and end at the first column
cat psefvnc_dell03.txt | grep desktop | sed -E 's/^.*\(([a-z]+)\).*$/\1/' | sort | uniq -c | sort -n | tail -n20 | awk '{print $2}' | paste -sd,
xionghuawei,xuyongfeng,xuyongye,yanweijia,yexinyu,hesunan,lilikai,liuchengjie,liyalin,lvjingjing,mahe,ningzihan,shaozhuang,xuliangyue,yinwenhe,zhangheng,zhangzhenshi,zhengyu,linye,xiechenjia
cat psefvnc_dell03.txt | grep desktop | sed -E 's/^.*\(([a-z]+)\).*$/\1/' | sort | uniq -c | awk '$1 == 1 && $2 ~ /^l.*$/ {print $0}'
[awk is great for operating over columns]
cat psefvnc_dell03.txt | grep desktop | sed -E 's/^.*\(([a-z]+)\).*$/\1/' | sort | uniq -c | awk 'BEGIN { rows = 0 } $1 == 1 && $2 ~ /^l.*$/ {rows += 1} END { print rows }'
[begin: match the 0th line. end: match the last+1 line.]
echo "1+2" | bc -l
cat psefvnc_dell03.txt | grep desktop | sed -E 's/^.*\(([a-z]+)\).*$/\1/' | sort | uniq -c | awk '$1 != 1 { print $1 }' | paste -sd+
2+2+4+2+2+2+2+2+2+5+2+2+2+2+2
cat psefvnc_dell03.txt | grep desktop | sed -E 's/^.*\(([a-z]+)\).*$/\1/' | sort | uniq -c | awk '$1 != 1 { print $1 }' | paste -sd+ | bc -l
35
cat psefvnc_dell03.txt | grep desktop | sed -E 's/^.*\(([a-z]+)\).*$/\1/' | sort | uniq -c | awk '{ print $1 }' | paste -sd+ | bc -l
53
cat psefvnc_dell03.txt | grep desktop | sed -E 's/^.*\(([a-z]+)\).*$/\1/' | sort | uniq -c | awk '{ print $1 }'
cat psefvnc_dell03.txt | grep desktop | sed -E 's/^.*\(([a-z]+)\).*rfbport ([0-9]+) .*$/\1 \2/' | sort
##############################################################
cat psefvnc_dell03.txt | grep desktop | sed -E 's/^.*\(([a-z]+)\).*rfbport ([0-9]+) .*$/\1: \2/' | sort | awk 'BEGIN{FS=":";OFS=":"}{a[$1]=a[$1] $2}END{for(v in a)print v,a[v]}' | sort
##############################################################


find . -name "*.[ch]" | xargs grep "#include" | sort | uniq
find . -name "*.[ch]" | xargs -t grep "#include" | sort | uniq
find ./ -name "*.c" | awk -F "." '{print $2}' | xargs -i -t mv ./{}.c  ./{}.html
find ./ -name "*.h" | awk -F "." '{print $2}' | xargs -i -t mv ./{}.h  ./{}.html
find . -name "*.html" -type f | xargs
find . -name "*.html" -type f | xargs -d\ # a space here, use space to split
grep -l '2' *.json -Z | xargs -0 cat
rg -l -e '2' -tjson -0 | xargs -0 cat
find -name '*json' -print0 | xargs -0 cat
# 替换\n为\0
rg -l -e '2' -tjson | tr '\n' '\0' | xargs -0 cat
find -name '*json' | tr '\n' '\0' | xargs -0 cat
find . -name "*.html" -type f -print0 | xargs -0 zip -r htmls.zip


tldr rg
ls -ahlrt --color

sudo dpkg -i *.deb
sudo apt install imagemagick
sudo apt install plocate
grep -R python .
rg 'python'
find . -name '*.sh' -type f
fd '.sh'
sudo apt install fortune-mod
sudo apt install cowsay
fortune | cowsay
apt info xxxname
figlet hello
toilet hi
toilet -f mono12 -F gay a girl
oneko
xeyes
sudo apt install ncal
cal 9 1752
echo $((2022-1752))
apt-get moo
fortune | rev
sudo apt install boxes
sudo apt install lolcat
sudo apt install libaa-bin
aafire
fortune | boxes -d cat | lolcat
toilet -f mono12 -F gay Happy    
sudo apt-get install aview imagemagick
wget http://labfile.oss.aliyuncs.com/courses/1/Linus.png
asciiview Linus.png
shellcheck mcd.sh
ripgrep

acpi -V
cat /sys/class/power_supply/BAT0/capacity
cat /sys/class/thermal/thermal_zone0/temp
man test

# Find all directories named src
find . -iname src -type d # -name, case sensitive; -iname, case insensitive
# Find all python files that have a folder named test in their path
find . -path '*/test/*.py' -type f
# Find all files modified in the last day
find . -mtime -1
# Find all zip files with size in range 500k to 10M
find . -size +500k -size -10M -name '*.tar.gz'
# Delete all files with .tmp extension
find . -name '*.tmp' -exec rm {} \;
# Find all PNG files and convert them to JPG
find . -name '*.png' -exec convert {} {}.jpg \;

uname -r
uname -a
py -m memory_profiler mem.py 
kernprof -l -v urls.py
fortune | lolcat
python -m cProfile -s tottime urls.py| tac
python -m cProfile -s tottime grep.py 1000 '^(import|\s*def)[^,]*$' *.py
time curl https://missing.csail.mit.edu &> /dev/null
grep -rni "hello,world!" *
sed -i 's/2020/8080/g' ./conf/server.xml
find . -regex "^.*\.pdf$" -type f
sudo strace ls -l > /dev/null
gdb --args sleep 10
pyflakes lint.py
mypy lint.py
apt info shellcheck
btop
htop
ls -CF
ls -AhF
ls -A
sl -e
df -h
du -sh *
watch -n 1 -d nvidia-smi
tmux new -s
tmux attach -t
tmux kill-server
tmux kill-session -t
git log --all --graph --decorate
git rm -r --cached .
prime-run minecraft-launcher
conda env list
conda activate work
conda deactivate
python -m ipdb hello.py
pip install ipdb
pip show requests
pip show -f requests
diff ~/.gitconfig dotfiles/.gitconfig
md5sum ~/.aliases dotfiles/.aliases
vimdiff ~/.vimrc dotfiles/.vimrc
man watch
watch -t

# findvnc
ps -ef | grep vnc | grep desktop | sed -E 's/^.*\(([a-z]+)\).*rfbport ([0-9]+) .*$/\1: \2/' | sort | awk 'BEGIN{FS=":";OFS=":"}{a[$1]=a[$1] $2}END{for(v in a)print v,a[v]}' | sort

# cpu monitor
watch -n 1 "cat /proc/cpuinfo | grep MHz | awk '{print \$1 NR \$3 \$4 \$2}'"

# Count how many lines are in my dotfiles
find . -type f | sed -E 's/^\.\/refs.*$//' | sed -E '/^$/d' | xargs cat | wc -l
find . -type f | sed -E '/^\.\/refs.*$/d' | xargs cat | sed -E '/^[#"].*$/d' | sed -E '/^[ \t]*$/d' | wc -l

# Find and concisely list the port numbers of all vnc users
ps -ef | grep vnc | grep desktop | sed -E 's/^.*\(([a-z]+)\).*rfbport ([0-9]+) .*$/\1: \2/' | sort | awk 'BEGIN{FS=":";OFS=":"}{a[$1]=a[$1] $2}END{for(v in a)print v,a[v]}' | sort

# use shuf to get random number
while [[ `seq 1 10 | shuf | head -n 1` != "1" ]]; do echo "retry"; done

# pack files and upload by ssh
find . -name "*.pdf" | xargs tar cj | ssh yzh@192.168.1.1 'cd ysyx; > pdf.tar.bz2'

# search tools type
echo $PATH | tr -t : '\n' | xargs -I{} find {} -maxdepth 1 -type f -executable | \
  xargs file -b -e elf | sort | uniq -c | sort -nr

# vim which elf
vim `which -a which | grep -v shell | head -n 1`

# get your top 10 most used commands, for bash
history | awk '{$1="";print substr($0,2)}' | sort | uniq -c | sort -n | tail -n 10
# for zsh
history 1 | awk '{$1="";print substr($0,2)}' | sort | uniq -c | sort -n | tail -n 20

# search pattern within all files in current dir
grep "regexp" . -nr

# count how many files in current dir
ls -lR | grep "^-" | wc -l

# gpu use
watch -n 1 -d nvidia-smi

# ls gpus in your pc
lspci -k | grep -A 2 -E "(VGA|3D)"

# ls linux version and system name
cat /proc/version
 -n 1 "echo -n 'Hello | Time: '; date; echo 'GHR CLOCK'"

```

## PDB Commands

## GDB Commands



# THE END
