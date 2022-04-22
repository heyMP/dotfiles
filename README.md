# Installation

## Clone Repo into your home directory
```
cd ~/
git clone git@github.com:heyMP/dotfiles.git --recursive
cd dotfiles
bash install.sh
```

# Manual Install

## Install NEOVIM

Install nvim via brew or preferred method.

Based on lunarvim's nvim from scratch repo
https://github.com/LunarVim/Neovim-from-scratch


## Create Symlinks
```
ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.viminfo ~/.viminfo
ln -sf ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme
ln -sf ~/dotfiles/oh-my-zsh-custom ~/dotfiles/.oh-my-zsh/custom
```

## Add Server Variables
```
echo 'ZSH_SERVER_NAME="MYSERVER"
ZSH_SERVER_COLOR="yellow"
' > ~/.zshenv
source ~/.zshenv
source ~/.zshrc
```

## Install DrupalVim
```
drush dl vimrc
ln -sf ~/.drush/vimrc/bundle/vim-plugin-for-drupal ~/.vim/bundle/vim-plugin-for-drupal
```

## Load helper tags
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

## httpie

If doing REST development install httpie from:
https://github.com/jkbrzt/httpie
