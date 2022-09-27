#!/bin/bash
echo "DO NOT EXCUTE THIS SCRIPT!"
exit

# Count how many lines are in my dotfiles
find . -type f | sed -E 's/^\.\/refs.*$//' | sed -E '/^$/d' | xargs cat | wc -l

# Find and concisely list the port numbers of all vnc users
ps -ef | grep vnc | grep desktop | sed -E 's/^.*\(([a-z]+)\).*rfbport ([0-9]+) .*$/\1: \2/' | sort | awk 'BEGIN{FS=":";OFS=":"}{a[$1]=a[$1] $2}END{for(v in a)print v,a[v]}' | sort
