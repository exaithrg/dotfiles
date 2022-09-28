# My Dotfiles
**For linux configuration**

**NOTE**: Dotfiles should be in their own folder, under version control, and **symlinked** into place using a script.

**NOTE**: Use `./linux/setup_all.sh` to configure the environment automatically.

## RandomQuotes

**NOTE**: If you want to connect to a remote host via sftp or scp, the .bashrc of the remote host should not have any echo statements, otherwise it will fail to connect. So don't use randomquotes in this case.

`cp ./randomquotes.sh ~/.randomquotes`

Add `source ~/.randomquotes` to the end of `~/.bashrc `

## Tools

A tool bootstraps your dotfiles: **[dotbot](https://github.com/anishathalye/dotbot)**

Switch between vim and tmux panes: **[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)**

## Thanks

**[The Missing Semester of Your CS Education](https://missing.csail.mit.edu/)** [ Highly recommended! ] 

[Your unofficial guide to dotfiles on GitHub](https://dotfiles.github.io/)

MIT instructors’ dotfiles ([Anish](https://github.com/anishathalye/dotfiles), [Jon](https://github.com/jonhoo/configs), [Jose](https://github.com/JJGO/dotfiles)) 

[mathiasbynens](https://github.com/mathiasbynens)/**[dotfiles](https://github.com/mathiasbynens/dotfiles)**

[Tons of dotfiles on GitHub](https://github.com/search?o=desc&q=dotfiles&s=stars&type=Repositories)

[XuXiaoDong's tmux configuration](https://github.com/xuxiaodong/tmuxen)

[130 Short Quotes That Will Inspire You (Fast)](https://wisdomquotes.com/short-quotes/)

[Short Inspirational Quotes to Fuel Your Day](https://everydaypower.com/short-inspirational-quotes/)
