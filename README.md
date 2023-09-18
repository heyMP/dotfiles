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

Install the following packages with Homebrew

```bash
brew install zsh
brew install zsh-autosuggestions
brew install tmux
brew install neovim
brew install git
brew install git
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/mpotter/.zprofile\n    eval "$(/opt/homebrew/bin/brew shellenv)"
brew install zsh-autosuggestions
brew reinstall zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
brew install fzf\n\n# To install useful key bindings and fuzzy completion:\n$(brew --prefix)/opt/fzf/install
brew install z
brew install lazygit
```


## Create Symlinks
```bash
ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.viminfo ~/.viminfo
ln -sf ~/dotfiles/zsh-custom ~/.oh-my-zsh/custom
ln -sf ~/dotfiles/.zshrc ~/.zshrc
```

## Install tmux plugins

Install the tmux plugins with tmp

1. Enter into the tmux server
2. Press prefix + I (capital i, as in Install) to fetch the plugin.
