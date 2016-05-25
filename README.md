# Installation

## Clone Repo into your home directory
```
cd ~/
git clone git@github.com:heyMP/dotfiles.git --recursive
```

## Create Symlinks

```
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.viminfo ~/.viminfo
ln -sf ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/heymp.zsh-theme ~/dotfiles/.oh-my-zsh/themes/heymp.zsh-theme
ln -sf ~/dotfiles/oh-my-zsh-custom ~/dotfiles/.oh-my-zsh/custom
```

## Insall Zsh and make it the default shell
```
yum install zsh
or
apt-get install zsh

chsh -s /bin/zsh
```

## Install tmux
```
yum install tmux
```

## Install fonts

From within the `.vim/bundle/fonts` directiory run

```
bash install.sh
```

