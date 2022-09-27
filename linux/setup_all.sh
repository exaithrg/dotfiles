#!/bin/bash

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
backup_if_exists ~/.bashrc
backup_if_exists ~/.condarc
backup_if_exists ~/.cshrc
backup_if_exists ~/.gitconfig
backup_if_exists ~/.inputrc
backup_if_exists ~/.randomquotes
backup_if_exists ~/.tmux.conf
backup_if_exists ~/.vimrc
backup_if_exists ~/.xinputrc
backup_if_exists ~/.Xmodmap
backup_if_exists ~/.zshrc
backup_if_exists ~/.ssh/config

mkdir -p ~/.vim/backupdir
mkdir -p ~/.vim/swpdir
mkdir -p ~/.vim/undodir

PROGRAMS=(bash conda csh env git scripts tmux vim)

for program in ${PROGRAMS[@]}; do
  echo "Configuring $program"
  stow -v --target=$HOME $program
done

echo "Configuring ssh"
stow -v --target=$HOME/.ssh ssh

echo "Done!"
