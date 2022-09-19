# you can use 'yes | ./auto_update.sh' to avoid annoying Y/n
echo "AUTO UPDATE BEGIN"
cp -i ~/.bashrc dotfiles/.bashrc
cp -i ~/.condarc dotfiles/.condarc
# cp -i ~/.gitconfig dotfiles/.gitconfig
cp -i ~/.inputrc dotfiles/.inputrc
cp -i ~/.randomquotes dotfiles/.randomquotes
cp -i ~/.tmux.conf dotfiles/.tmux.conf
cp -i ~/.vimrc dotfiles/.vimrc
cp -i ~/.Xmodmap dotfiles/.Xmodmap
cp -i ~/.xinputrc dotfiles/.xinputrc
git add .
git commit -m "auto update"
echo "AUTO UPDATE FINISH"
echo "Please use git push if anything changed."
