echo "AUTO UPDATE BEGAIN"
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
git push
echo "AUTO PUSH FINISH"
