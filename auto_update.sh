echo "AUTO UPDATE BEGIN"
cp ~/.bashrc dotfiles/.bashrc
cp ~/.condarc dotfiles/.condarc
cp ~/.gitconfig dotfiles/.gitconfig
cp ~/.inputrc dotfiles/.inputrc
cp ~/.randomquotes dotfiles/.randomquotes
cp ~/.tmux.conf dotfiles/.tmux.conf
cp ~/.vimrc dotfiles/.vimrc
cp ~/.Xmodmap dotfiles/.Xmodmap
git add .
git commit -m "auto update"
echo "AUTO UPDATE FINISH"
echo "Please use git push if anything changed."
