#!/bin/bash
echo "DO NOT EXCUTE THIS SCRIPT!"
exit

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

