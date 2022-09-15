echo "DIFF CHECK BEGIN"
echo "----------.bashrc----------"
diff ~/.bashrc dotfiles/.bashrc
echo "----------.condarc----------"
diff ~/.condarc dotfiles/.condarc
echo "----------.gitconfig----------"
diff ~/.gitconfig dotfiles/.gitconfig
echo "----------.inputrc----------"
diff ~/.inputrc dotfiles/.inputrc
echo "----------.randomquotes----------"
diff ~/.randomquotes dotfiles/.randomquotes
echo "----------.tmux.conf----------"
diff ~/.tmux.conf dotfiles/.tmux.conf
echo "----------.vimrc----------"
diff ~/.vimrc dotfiles/.vimrc
echo "----------.Xmodmap----------"
diff ~/.Xmodmap dotfiles/.Xmodmap
echo "----------.xinputrc----------"
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
