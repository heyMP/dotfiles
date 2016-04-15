# Installation

## Clone Repo into your home directory
```
cd ~/
git clone git@github.com:heyMP/dotfiles.git --recursive
```

## Create Symlinks

```
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.viminfo ~/.viminfo
ln -s ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/heymp.zsh-theme ~/dotfiles/.oh-my-zsh/themes/heymp.zsh-theme
ln -s ~/dotfiles/oh-my-zsh-custom ~/dotfiles/.oh-my-zsh/custom
```

## Insall Zsh and make it the default shell
```
yum install zsh
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

