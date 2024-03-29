#!/bin/sh

Install neovim from these directions:

https://github.com/LunarVim/nvim-basic-ide

echo 'Create Symlinks'
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.viminfo ~/.viminfo
ln -sf ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.taskrc ~/.taskrc
ln -sf ~/dotfiles/zsh-custom ~/dotfiles/.oh-my-zsh/custom
ln -sf ~/dotfiles/nvim-basic-ide ~/.config/nvim

# tmux
bash ./scripts/install-tmux.sh

# Ack
bash ./scripts/install-ack.sh

# iterm2 Shell Integration
curl -L https://iterm2.com/misc/install_shell_integration.sh | bash

# echo 'Add Server Variables'
# echo 'ZSH_SERVER_NAME="MYSERVER"
# ZSH_SERVER_COLOR="yellow"
# ' > ~/.zshenv
# source ~/.zshenv
# source ~/.zshrc

# echo 'Install DrupalVim'
# drush dl vimrc
# ln -sf ~/.drush/vimrc/bundle/vim-plugin-for-drupal ~/.vim/bundle/vim-plugin-for-drupal


# echo 'Insall Zsh and make it the default shell'
# sudo yum install zsh
# sudo chsh -s /bin/zsh

echo 'Install fonts'
cd ~/.vim/bundle/fonts/
sudo bash install.sh
echo 'If you use iTerm2 then you need to change font settings: https://github.com/powerline/fonts/issues/44'

echo 'Updating Submodules'
echo '~/dotfiles
git submodule update --init --recursive'

echo 'If doing REST development install httpie from:
https://github.com/jkbrzt/httpie'

echo 'Make sure you load helptags with vim:
vim
:Helptags
:help drupal
'
