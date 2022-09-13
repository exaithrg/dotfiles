echo "PULL START! ALL ORIGINAL DOTFILES WILL BE BACKUP IN pullbk/"
cp ~/.bashrc pullbk/bashrc.pullbk
cp ~/.condarc pullbk/condarc.pullbk
cp ~/.gitconfig pullbk/gitconfig.pullbk
cp ~/.inputrc pullbk/inputrc.pullbk
cp ~/.randomquotes pullbk/randomquotes.pullbk
cp ~/.tmux.conf pullbk/tmux.conf.pullbk
cp ~/.vimrc pullbk/vimrc.pullbk
cp ~/.Xmodmap pullbk/Xmodmap.pullbk
git pull
cp -i dotfiles/.bashrc ~/.bashrc
cp -i dotfiles/.condarc ~/.condarc
cp -i dotfiles/.gitconfig ~/.gitconfig
cp -i dotfiles/.inputrc ~/.inputrc
cp -i dotfiles/.randomquotes ~/.randomquotes
cp -i dotfiles/.tmux.conf ~/.tmux.conf
cp -i dotfiles/.vimrc ~/.vimrc
cp -i dotfiles/.Xmodmap ~/.Xmodmap
echo "PULL FINISH"
