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
ln -s ~/dotfiles/dracula.zsh-theme/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme
ln -sf ~/dotfiles/oh-my-zsh-custom ~/dotfiles/.oh-my-zsh/custom
```

## Install DrupalVim
```
drush dl vimrc
ln -s ~/.drush/vimrc/bundle/vim-plugin-for-drupal ~/.vim/bundle
```

Load helper tags
```
vim
:Helptags
:help drupal
```

## Insall Zsh and make it the default shell
```
yum install zsh
chsh -s /bin/zsh
```

## Install zsh on Ubuntu
```
apt-get install zsh
zsh
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

## Updating Submodules
```
~/dotfiles
git submodule update --init --recursive
```
