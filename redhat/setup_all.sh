#!/bin/bash
# dotfiles config script for redhat
# Author: Haoran Geng
# Link: https://github.com/exaithrg/dotfiles
# NOTE: If you want to modify this file, edit
#       it carefully. It may delete your home.

# symlink your dotfiles automatically
echo "Backup your dotfiles..."

OLD_DOTFILES="dotfile_bk_$(date -u +"%Y%m%d%H%M%S")"
mkdir $OLD_DOTFILES

function backup_if_exists() {
    if [ -f $1 ];
    then
      mv $1 $OLD_DOTFILES
    fi
    if [ -d $1 ];
    then
      mv $1 $OLD_DOTFILES
    fi
}

# Clean common conflicts
backup_if_exists ~/.aliases
backup_if_exists ~/.aliases_tcsh
backup_if_exists ~/.bashrc
backup_if_exists ~/.condarc
backup_if_exists ~/.cshrc
backup_if_exists ~/.gitconfig
backup_if_exists ~/.inputrc
backup_if_exists ~/.irun_env_setup
backup_if_exists ~/.kshrc
backup_if_exists ~/.profile
backup_if_exists ~/.randomquotes
backup_if_exists ~/.tcshrc
backup_if_exists ~/.tldrrc
backup_if_exists ~/.tmux.conf
backup_if_exists ~/.vimrc
backup_if_exists ~/.xinputrc
backup_if_exists ~/.Xmodmap
backup_if_exists ~/.zshrc

echo "Config vim..."

mkdir -p ~/.vim/backupdir
mkdir -p ~/.vim/swpdir
mkdir -p ~/.vim/undodir

echo "Set current dir as dotfiles' home..."
dotdir=$(pwd)
echo "Dotdir=$dotdir"
echo "Symlinking dotfiles from $dotfiles"

# ln -s .bashrc ../myhome/.bashrc
link() {
  from="$1"
  to="$2"
  fname="$3"
  echo "Linking '$from' to '$to'"
  # echo "$to/$fname"
  rm -f "$to/$fname"
  ln -sv "$from" "$to"
}

# find all dotfiles, delete ./ prefix and link them to home.
# sed may have some bugs, plz report any bug to Haoran Geng.
for dotfs in $(find . -maxdepth 1 -type f -regex "\./\..+" | sed -E 's/^\.\/(\.[a-zA-Z_\.]+)$/\1/'); do
  # link "$dotfs" "$HOME/$dotfs"
  link "$dotdir/$dotfs" ~ "$dotfs"
done

echo "All done! Thanks for using."

