# My Dotfiles
**For linux configuration**

**NOTE1**: Dotfiles should be in their own folder, under version control, and **symlinked** into place using a script.

**NOTE2**: Use `./linux/setup_all.sh` to configure the environment automatically.

**NOTE3**: If you are new to **vim** or **tmux**, you can check the **[GHR Shortcuts Cheatsheet](https://github.com/njughr/dotfiles/blob/main/GHRCheatSheet.md)** for some useful stuff.

## RandomQuotes

**NOTE4**: If you want to connect to a remote host via sftp or scp, the .bashrc of the remote host should not have any echo statements, otherwise it will fail to connect. So don't use randomquotes in this case.

`cp ./randomquotes.sh ~/.randomquotes`

Add `source ~/.randomquotes` to the end of `~/.bashrc `

## Thanks

**[The Missing Semester of Your CS Education](https://missing.csail.mit.edu/)** [ Highly recommended! ] 

[Your unofficial guide to dotfiles on GitHub](https://dotfiles.github.io/)

[Tons of dotfiles on GitHub](https://github.com/search?o=desc&q=dotfiles&s=stars&type=Repositories)

MIT instructors’ dotfiles ([Anish](https://github.com/anishathalye/dotfiles), [Jon](https://github.com/jonhoo/configs), [Jose](https://github.com/JJGO/dotfiles)) 

[Mathias’s dotfiles](https://github.com/mathiasbynens/dotfiles)

[A Quick and Easy Guide to tmux](https://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/)

[XuXiaoDong's tmux configuration](https://github.com/xuxiaodong/tmuxen)

[Oh My ZSH](https://github.com/ohmyzsh/ohmyzsh)

[Oh My tmux](https://github.com/gpakosz/.tmux)

[130 Short Quotes That Will Inspire You (Fast)](https://wisdomquotes.com/short-quotes/)

[Short Inspirational Quotes to Fuel Your Day](https://everydaypower.com/short-inspirational-quotes/)
