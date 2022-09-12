# My Dotfiles
**For linux configuration**

## XmodMap

`.Xmodmap` is used to remap `<ESC>` with `<CapsLock>`

## Bashrc

**Enable Vim-mode**

> If you’re a Bash user, use `set -o vi`. If you use Zsh, `bindkey -v`. For Fish, `fish_vi_key_bindings`. Additionally, no matter what shell you use, you can `export EDITOR=vim`. This is the environment variable used to decide which editor is launched when a program wants to start an editor. For example, `git` will use this editor for commit messages.

## Inputrc

```css
set editing-mode vi
```

## Vimrc

> Stick with it because I'd say that in about 20 hours of programming using a new editor you'll be back to the same speed at which you programed using your old tool, and then after that the benefits will start, and you'll get faster and faster as you learn more.
>
> Once this becomes muscle memory you can basically **edit files at the speed at which you think**.

### Shortcuts

```css
hjkl "move the cursor"
ZQ=:q!<CR> "force quit"
ZZ=:wq<CR> "write and quit"
<ESC> " back to normal mode"
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
<sym>=b() [] B{} <> '' ""
ci<sym> "change in <sym>"
di<sym> "delete in <sym>"
yi<sym> "copy in <sym>"
vi<sym> "select in <sym>"
ca<sym> "change include <sym>"
da<sym> "delete include <sym>"
ya<sym> "copy include <sym>"
va<sym> "selet include <sym>"
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
set noic nohls nois "disable"
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
:g/V/t.|-d<CR>ZZ "hello vimgolf"
```

### MyKeyMap

```css
vnoremap <C-Y> "+y	"Vim Ctrl+C"
vnoremap <C-D> "+d	"Vim Ctrl+X"
nnoremap <C-P> "+p	"Vim Ctrl+V"
nnoremap QQ :q!<CR>	"QQ not ZQ"
```

### PluginShortcuts

```css
:PlugInstall
:PlugStatus
:PlugClean
:PlugUpdate
```

## RandomQuotes

`cp ./randomquotes.sh ~/.randomquotes`

Add `source ~/.randomquotes` to the end of `~/.bashrc `

## Tools

A tool bootstraps your dotfiles: **[dotbot](https://github.com/anishathalye/dotbot)**

## Thanks

**[The Missing Semester of Your CS Education](https://missing.csail.mit.edu/)** [ Highly recommended! ] 

MIT instructors’ dotfiles ([Anish](https://github.com/anishathalye/dotfiles), [Jon](https://github.com/jonhoo/configs), [Jose](https://github.com/JJGO/dotfiles)) 

[130 Short Quotes That Will Inspire You (Fast)](https://wisdomquotes.com/short-quotes/)

[Short Inspirational Quotes to Fuel Your Day](https://everydaypower.com/short-inspirational-quotes/)
