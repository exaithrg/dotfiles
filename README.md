# My Dotfiles
**NOTE1**: Dotfiles should be in their own folder, under version control, and **symlinked** into place using a script.

**NOTE2**: If you are new to **vim** or **tmux**, you can check the **[GHR Shortcuts Cheatsheet](https://github.com/njughr/dotfiles/blob/main/GHRCheatSheet.md)** for some useful stuff.

## `ubuntu` Folder

This folder stores my configuration files for *Ubuntu 22.04*.

You must have a **root** privilege and a **good** internet connection to use these configurations.

Use `./ubuntu/setup_all.sh` (requires the stow tool) to configure the environment automatically.

## `redhat` Folder

This folder contains configuration files for *Red Hat Linux Server 6.9*.

**No root privilege or internet connection is required.**

 Use `./redhat/setup_all.sh` to configure the environment automatically.

## `windows` Folder

This folder stores some configuration files under the Windows system.

## RandomQuotes

**NOTE3**: If you want to connect to a remote host via sftp or scp, the .bashrc of the remote host should not have any echo statements, otherwise it will fail to connect. So don't use randomquotes in this case.

`cp ./randomquotes.sh ~/.randomquotes`

Add `source ~/.randomquotes` to the end of `~/.bashrc `

## Thanks

**[The Missing Semester of Your CS Education](https://missing.csail.mit.edu/)** [ Highly recommended! ] 

[Your unofficial guide to dotfiles on GitHub](https://dotfiles.github.io/)

[Tons of dotfiles on GitHub](https://github.com/search?o=desc&q=dotfiles&s=stars&type=Repositories)

MIT instructors’ dotfiles ([Anish](https://github.com/anishathalye/dotfiles), [Jon](https://github.com/jonhoo/configs), [Jose](https://github.com/JJGO/dotfiles)) 

[Mathias’s dotfiles](https://github.com/mathiasbynens/dotfiles)

[paulmillr's dotfiles autoconfig script](https://github.com/paulmillr/dotfiles/blob/master/etc/symlink-dotfiles.sh)

[A Quick and Easy Guide to tmux](https://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/)

[XuXiaoDong's tmux configuration](https://github.com/xuxiaodong/tmuxen)

[lervag's zathura configuration](https://github.com/lervag/dotfiles/tree/master/zathura/.config/zathura)

[Oh My ZSH](https://github.com/ohmyzsh/ohmyzsh)

[Oh My tmux](https://github.com/gpakosz/.tmux)

[130 Short Quotes That Will Inspire You (Fast)](https://wisdomquotes.com/short-quotes/)

[Short Inspirational Quotes to Fuel Your Day](https://everydaypower.com/short-inspirational-quotes/)
