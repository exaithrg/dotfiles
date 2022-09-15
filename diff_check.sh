echo "DIFF CHECK BEGIN"
diff ~/.bashrc dotfiles/.bashrc
diff ~/.condarc dotfiles/.condarc
diff ~/.gitconfig dotfiles/.gitconfig
diff ~/.inputrc dotfiles/.inputrc
diff ~/.randomquotes dotfiles/.randomquotes
diff ~/.tmux.conf dotfiles/.tmux.conf
diff ~/.vimrc dotfiles/.vimrc
diff ~/.Xmodmap dotfiles/.Xmodmap
diff ~/.xinputrc dotfiles/.xinputrc
echo "DIFF CHECK END, MD5 CHECK BEGIN"
md5sum ~/.bashrc dotfiles/.bashrc
md5sum ~/.condarc dotfiles/.condarc
md5sum ~/.gitconfig dotfiles/.gitconfig
md5sum ~/.inputrc dotfiles/.inputrc
md5sum ~/.randomquotes dotfiles/.randomquotes
md5sum ~/.tmux.conf dotfiles/.tmux.conf
md5sum ~/.vimrc dotfiles/.vimrc
md5sum ~/.Xmodmap dotfiles/.Xmodmap
md5sum ~/.xinputrc dotfiles/.xinputrc
echo "MD5CHECK END"
