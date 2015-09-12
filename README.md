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
```

## Make Zsh the default shell

```
chsh -s /bin/zsh
```


## Install fonts

From within the `.vim/bundle/fonts` directiory run

```
bash install.sh
```

