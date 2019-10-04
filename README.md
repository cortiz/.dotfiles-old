# .dotfiles

## Setup environment in a new computer
### Requiremets
* Git
* Zsh
* Oh-my-zsh
#### Optional Req
* [neovim](https://neovim.io/)
* Python3 
* [LF Manager](https://github.com/gokcehan/lf)

### Steps
```bash
git clone --bare https://github.com/cortiz/dotfiles.git $HOME/.dotfiles
alias dfs='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dfs checkout
```


### If you're starting from scratch, go ahead and…

```bash 
git init --bare $HOME/.dotfiles
alias dfs='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dfs config --local status.showUntrackedFiles no
dfs checkout
dfs add FILE
dfs commit 
dfs push origin master
```
